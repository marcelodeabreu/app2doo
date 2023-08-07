//
//  app2DooListItemViewViewModel.swift
//  app2doo
//
//  Created by Marcelo de Abreu on 24/05/23.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class app2DooListItemViewViewModel: ObservableObject {
    init () {}
    
    func toggleIsDone(item: app2DooListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("2doos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}

