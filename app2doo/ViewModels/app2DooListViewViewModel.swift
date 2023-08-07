//
//  app2DooListViewViewModel.swift
//  app2doo
//
//  Created by Marcelo de Abreu on 24/05/23.
//
import FirebaseFirestore
import Foundation

class app2DooListViewViewModel: ObservableObject {
    
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init (userId: String) {
        self.userId = userId
    }
    
    /// Delete 2doo list item
    /// - Parameter id: Item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("2doos")
            .document(id)
            .delete()
    }
}
