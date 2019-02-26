//
//  ViewController.swift
//  FestivalApp
//
//  Created by luxury on 2/26/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellId = "cellId"
    
    var tableView:UITableView? = nil
    
    var festivals: [Festival] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .gray
        
        setupTableView()
        setupLabels()
        
        doTheJson()
        codable()
    }
    
    func setupLabels() {
        
    }
    
    func codable() {
        // The Codable systems has 3 goals:
        
        // Universality - should work with structs, enums, classes
        
        // Type safety - JSON is weakly typed. But we're working with swift so our code works with strongly typed data structures
        
        // Reducing boilerplate - writing less code while the compiler generates what we need automatically
        
        // Encode - converting
        
        struct ConcertArtist: Codable {
            var city: String
        }
        
        let artists:[ConcertArtist] = [ConcertArtist(city: "name")]
        
        // Encoding
        do {
            let encoder = JSONEncoder()
            let jsonData = try encoder.encode(artists)
            let jsonString = String(decoding: jsonData, as: UTF8.self)
            print("Json str: \(jsonString)")
        } catch {
            print(error.localizedDescription)
        }
        
        // Decoding
        do {
            let encoder = JSONEncoder()
            let jsonData = try encoder.encode(artists)
            
            let decoder = JSONDecoder()
            let decoded = try decoder.decode([ConcertArtist].self, from: jsonData)
            
            for name in decoded {
                print(name)
            }
        } catch {
            print(error.localizedDescription)
        }
        
        
    }
    
    
    func doTheJson() {
        let path = Bundle.main.path(forResource: "festivals", ofType: "json")
        if let path = path {
            let url = URL(fileURLWithPath: path)
            let contents = try? Data(contentsOf: url, options: .alwaysMapped) // Data
            let jsonResult = try? JSONSerialization.jsonObject(with: contents!, options: .allowFragments)
            let decoder = JSONDecoder()
            
            if let data = contents,
                let festivalsFromJSON = try? decoder.decode([Festival].self, from: data) {
                festivals = festivalsFromJSON
                for fest in festivals {
                    print(fest.date)
                }
            }
        }
        
        
    }
    
    func setupTableView() {
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        tableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.register(ViewControllerTVCell.self, forCellReuseIdentifier: cellId)
        
        view.addSubview(tableView!)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return festivals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ViewControllerTVCell
        
        let festi = festivals[indexPath.row]
        cell.festival = festi
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }


}

