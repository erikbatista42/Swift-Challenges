import Dispatch

let philosophers = 4

class ForkPair {
    static let forks: [DispatchSemaphore] = Array(repeating: DispatchSemaphore(value: 1), count: philosophers)
    
    let leftFork: DispatchSemaphore
    let rightFork: DispatchSemaphore
    
    let letftIndex: Int?
    let rightIndex: Int?
    
    init(leftIndex: Int, rightIndex: Int) {
        self.letftIndex = leftIndex
        self.rightIndex = rightIndex
        
        // Order forks by index to prevent deadlock
        if leftIndex > rightIndex {
            leftFork = ForkPair.forks[leftIndex]
            rightFork = ForkPair.forks[rightIndex]
        } else {
            leftFork = ForkPair.forks[rightIndex]
            rightFork = ForkPair.forks[leftIndex]
        }
    }
    
    func pickUpFork() {
        // Pick up by starting with the negative index
        leftFork.wait()
        rightFork.wait()
    }
    
    func putDownFork() {
        // Order is arbitrary
        leftFork.signal()
        rightFork.signal()
    }
}

class Philosophers {
    let forkPair: ForkPair
    let philosopherIndex: Int?
    
    var leftIndex = -1
    var rightIndex = -1
    
    init(philosopherIndex: Int) {
        self.philosopherIndex = philosopherIndex
        
        leftIndex = philosopherIndex
        rightIndex = philosopherIndex - 1
        
        if rightIndex < 0 {
            rightIndex += philosophers
        }
        
        self.forkPair = ForkPair(leftIndex: leftIndex, rightIndex: rightIndex)
        
        print("Philosopher \(philosopherIndex) picked up fork\(leftIndex) and fork\(rightIndex)")
    }
    
    func start() {
        while true {
            print("Philosopher \(philosopherIndex ?? 0) is waiting for forks \(leftIndex) and \(rightIndex)")
            forkPair.pickUpFork()
            print("Philosopher \(philosopherIndex ?? 0) started eating")
            sleep(3)
            print("Philosopher \(philosopherIndex ?? 0) stopped eating. Stopped using fork \(leftIndex) and \(rightIndex)")
            forkPair.putDownFork()
        }
    }
    
}


let globalSemaphore = DispatchSemaphore(value: 0)

for i in 0..<philosophers {
    DispatchQueue.global(qos: .background).async {
        let p = Philosophers(philosopherIndex: i)
        p.start()
        }
}

for semaphore in ForkPair.forks {
    // Start the thread by signaling the semaphore
    semaphore.signal()
}

globalSemaphore.wait() // Wait forever
