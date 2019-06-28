//
//  ViewController.swift
//  FinalProject
//
//  Created by luxury on 6/27/19.
//  Copyright © 2019 luxury. All rights reserved.
//

import UIKit
import Kingfisher

class HomeController: UIViewController {

    var collectionView: UICollectionView!
    let flowLayout = UICollectionViewFlowLayout()
    let cellId = "cellId"
    
    let key = "ed9a85e21a51350442134e45e991dec9"
    let appSecret = "d68055091d356b75"
    
    // request format .getPopular
    let methodRequest = "flickr.photos.getPopular"

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
        
    
    }
    
    


    
    
    
    
    
    
}

extension HomeController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func setupCollectionView() {
        let frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        collectionView = UICollectionView(frame: frame, collectionViewLayout: flowLayout)
        
        // Use this property to extend the space between your content and the edges of the content view.
        collectionView.contentInset = UIEdgeInsets(top: 15, left: 6, bottom: 15, right: 6)
        
        // method to tell the collection view how to create a new cell of the given type
        collectionView.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        
        // The delegate is the behavior of a cell (What happens when it is tapped, when double tapped, if you hold it etc..
        collectionView.delegate = self
        
        // The dataSource is the customization of a cell (color, height, width, rounded corners etc..
        collectionView.dataSource = self
        
        collectionView.backgroundColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        
        // hides vertical scroll bar  - it shows (true) by default
        collectionView?.showsVerticalScrollIndicator = false
        
        //  Here, we add the collectionView as a subview to the superView. You can only have one superView. Check this out to get a better understanding of what this comment is trying to say: https://goo.gl/images/TQ4mti
        view.addSubview(collectionView)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MainCollectionViewCell
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 15
        
        //        let photoURL = URL(string: videoThumbnailLinks[indexPath.row])
        //        let ranURL = URL(string: "http://www.huh.com")
        //        cell.backgroundImage.af_setImage(withURL: photoURL ?? ranURL!)
        cell.backgroundImage.image = UIImage(named: "message")
        
        let imageID = "22804318780"
        let imageSecret = "9b9037da15"
        let url = URL(string: "https://farm1.staticflickr.com/2/\(imageID)_\(imageSecret)_m.jpg")
        cell.backgroundImage.kf.setImage(with: url)
        return cell
    }
    
    // TODO: Play the right video functionality
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print(123)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (view.frame.width - 2.1) / 2.1
        return CGSize(width: width, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 13
    }
}


