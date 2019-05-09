//
//  Item+CoreDataClass.swift
//  loaner
//
//  Created by luxury on 5/9/19.
//  Copyright © 2019 LinnierGames. All rights reserved.
//
//

import Foundation
import CoreData
import UIKit.UIImage
import Contacts.CNContact

//@objc(Item)
//public class Item: NSManagedObject {
//
//}
//
//
//import Foundation
//import UIKit.UIImage
//import Contacts.CNContact

@objc(Item)
public class Item: NSManagedObject {
    
    override public func awakeFromInsert() {
        super.awakeFromInsert()
        
        // Give properties initial values
        itemTitle = "Untitled Item"
        notes = ""
        itemImage = UIImage(named: "no item image")!
        loanee = Loanee(name: "", contactNumber: "")
    }
    
    func assignLoanee(name: String?, phoneNumber: String?) {
        
        //validate contact has at least one number
        guard let contactNumber = phoneNumber else {
            return print("this contact needed to have at least one number")
        }
        
        if let contactName = name {
            //update loanee var
            let newLoanee = Loanee(
                name: contactName,
                contactNumber: contactNumber
            )
            loanee = newLoanee
        } else {
            loanee = Loanee.init(name: "no name", contactNumber: "no contact number")
        }
    }
}

/** For Future Feature: Ability to access Contacts app:
 
 //    mutating func assignLoanee(to contact: CNContact?) {
 if let contact = contact {
 
 //contact image
 //            var profileImage = UIImage(named: "no profile image")!
 //            if let dataFromContact = contact.imageData,
 //                let imageFromContact = UIImage(data: dataFromContact) {
 //                profileImage = imageFromContact
 //            }
 //
 //validate contact has at least one number
 guard let firstPhoneNumber = contact.phoneNumbers.first else {
 return print("this contact needed to have at least one number from the ContactPickerVc")
 }
 
 //update loanee var
 let newLoanee = Loanee(
 name: contact.givenName,
 //                profileImage: profileImage,
 contactNumber: firstPhoneNumber.value.stringValue
 //                contact: contact
 )
 
 loanee = newLoanee
 } else {
 loanee = nil
 }
 **/


//TODO: Cleanup inits

/** For Future Feature: Ability to access Contacts app:
 
 init(name: String, profileImage: UIImage, contactNumber: String?, contact: CNContact) {
 self.name = name
 self.profileImage = profileImage
 self.contactNumber = contactNumber
 self.contactInfo = contact
 }
 **/


/** For Future Feature: Ability to access Contacts app:
 
 // Loanee type that uses built in Contacts app
 struct Loanee {
 var name: String
 var profileImage: UIImage = UIImage(named: "no profile image")!
 var contactNumber: String?
 var contactInfo: CNContact! = nil
 
 init(name: String, profileImage: UIImage, contactNumber: String?) {
 self.name = name
 self.profileImage = profileImage
 self.contactNumber = contactNumber
 }
 
 init(name: String, profileImage: UIImage, contactNumber: String?, contact: CNContact) {
 self.name = name
 self.profileImage = profileImage
 self.contactNumber = contactNumber
 self.contactInfo = contact
 }
 ***/

//}
