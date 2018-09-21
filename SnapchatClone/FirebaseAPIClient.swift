//
//  FirebaseAPIClinet.swift
//  SnapchatClone
//
//  Created by Max Miranda on 9/20/18.
//  Copyright © 2018 ___MaxAMiranda___. All rights reserved.
//

import Firebase
import SwiftyJSON

class FirebaseAPIClient {
    var ourUser: SnapUser?
    static func getUser(withId: String) -> SnapUser? {
        let usersRef = Database.database().reference().child("users")
        usersRef.child(withId).observeSingleEvent(of: .value, with: { (snapshot) in
            let json = JSON(snapshot.value as Any)
            if var result = json.dictionaryObject {
                result["id"] = snapshot.key
                if let user = SnapUser(JSON: result) {
                    self.ourUser = user
                }
            }
        })
        return ourUser
    }
}
