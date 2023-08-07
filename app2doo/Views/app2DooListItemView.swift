//
//  app2DooListItemView.swift
//  app2doo
//
//  Created by Marcelo de Abreu on 24/05/23.
//

import SwiftUI

struct app2DooListItemView: View {
    @StateObject var viewModel = app2DooListItemViewViewModel()
    let item: app2DooListItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.body)
                    .bold()
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color.purple)
            }
            
            Spacer()
            
            Button {
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(Color.purple)
            }
        }
    }
}

struct app2DooListItemView_Previews: PreviewProvider {
    static var previews: some View {
        app2DooListItemView(item: .init(id: "123", title: "get milk", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: true))
    }
}
