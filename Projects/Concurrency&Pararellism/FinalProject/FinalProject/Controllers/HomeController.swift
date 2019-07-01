//
//  ViewController.swift
//  FinalProject
//
//  Created by luxury on 6/27/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import UIKit
import Kingfisher

class HomeController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    var fetchedPhotos: [String] = []
    
    var collectionView: UICollectionView!
    let flowLayout = UICollectionViewFlowLayout()
    let cellId = "cellId"
    
//    let key = "ed9a85e21a51350442134e45e991dec9"
//    let appSecret = "d68055091d356b75"
//    let methodRequest = "flickr.photos.getPopular"

//    let json = "https://www.flickr.com/services/rest/?method=flickr.photos.getPopular&api_key=ed9a85e21a51350442134e45e991dec9&user_id=66956608%40N06&format=json&nojsoncallback=1"
    
//    var photos = [PhotoMetadata]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
    }
    
    
    func setupCollectionView() {
        
        let frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        collectionView = UICollectionView(frame: frame, collectionViewLayout: flowLayout)
        collectionView.contentInset = UIEdgeInsets(top: 15, left: 6, bottom: 15, right: 6)
        collectionView.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        collectionView?.showsVerticalScrollIndicator = false
        view.addSubview(collectionView)
        
    }
    
    func fetchData() {
        
        let urlString = "https://www.flickr.com/services/rest/?method=flickr.photos.getPopular&api_key=ed9a85e21a51350442134e45e991dec9&user_id=66956608%40N06&format=json&nojsoncallback=1"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Something went wrong while making http request: \(error.localizedDescription)")
            }
            guard let data = data else { return }
            guard let response = response else { return }
            
            if let httpResponse = response as? HTTPURLResponse {
                print("statusCode: \(httpResponse.statusCode)")
            }
            
            // implement json decoding and parsing
            do {
                let photosData = try JSONDecoder().decode(PopularPhotosJSONModel.self, from: data)
                
                DispatchQueue.main.sync {
                    let photos = photosData.photos?.photo
                    for photo in photos! {
                        let photoUrl = "https://farm1.staticflickr.com/2/\(photo?.id ?? "")_\(photo?.secret ?? "")_m.jpg"
                        self.fetchedPhotos.append(photoUrl)
                        
                    }
                    self.collectionView.reloadData()
                }
                
            } catch let jsonError {
                print("ERR decoding: ",jsonError.localizedDescription)
            }
            print("before resume", self.fetchedPhotos) // prints objects/items
            }.resume()
        
        print("after resume", self.fetchedPhotos) // array resets and prints 0 items
    }
    
    override func viewDidAppear(_ animated: Bool) {
        fetchData()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MainCollectionViewCell
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 15
        print(self.fetchedPhotos)
        //        let photoURL = URL(string: videoThumbnailLinks[indexPath.row])
        //        let ranURL = URL(string: "http://www.huh.com")
        //        cell.backgroundImage.af_setImage(withURL: photoURL ?? ranURL!)
        cell.backgroundImage.image = UIImage(named: "message")
        
        let imageID = "22804318780"
        let imageSecret = "9b9037da15"
        let url = URL(string: (fetchedPhotos[indexPath.row]))
        cell.backgroundImage.kf.setImage(with: url)
        return cell
    }
    
    
    // TODO: Play the right video functionality
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) { print(123) }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (view.frame.width - 2.1) / 2.1
        return CGSize(width: width, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat { return 10 }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fetchedPhotos.count
    }


}




