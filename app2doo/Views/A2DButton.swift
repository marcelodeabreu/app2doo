//
//  A2DButton.swift
//  app2doo
//
//  Created by Marcelo de Abreu on 26/05/23.
//

import SwiftUI

struct A2DButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .padding()
    }
}

struct A2DButton_Previews: PreviewProvider {
    static var previews: some View {
        A2DButton(title: "Value", background: .pink) {
            
        }
    }
}
