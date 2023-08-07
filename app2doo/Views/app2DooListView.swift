//
//  app2DooItemsView.swift
//  app2doo
//
//  Created by Marcelo de Abreu on 24/05/23.
//


import FirebaseFirestoreSwift
import SwiftUI

struct app2DooListView: View {
    @StateObject var viewModel: app2DooListViewViewModel
    @FirestoreQuery var items: [app2DooListItem]
    
    init(userId: String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/2doos")
        self._viewModel = StateObject(wrappedValue: app2DooListViewViewModel(userId: userId))
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    app2DooListItemView(item: item)
                        .swipeActions {
                            Button("Delete") {
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("2DOO app")
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

struct app2DooListView_Previews: PreviewProvider {
    static var previews: some View {
        app2DooListView(userId: "Nlz3YNfj3KUlIKB8qM3zUJXVcSI3")
    }
}
