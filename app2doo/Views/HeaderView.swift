//
//  HeaderView.swift
//  app2doo
//
//  Created by Marcelo de Abreu on 25/05/23.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subtitle: String
    
    var body: some View {
        ZStack {
            Spacer()
            Circle()
                .foregroundColor(Color.purple)
                .frame(width: 220)
                .offset(x: 0, y: -20)
            
            Circle()
                .foregroundColor(Color.purple)
                .frame(width: 30)
                .offset(x: 90, y: 90)
            
            Circle()
                .foregroundColor(Color.purple)
                .frame(width: 50)
                .offset(x: -110, y: -110)
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                    .offset(y: -30)
                Text(subtitle)
                    .font(.system(size: 25))
                    .foregroundColor(Color.white)
                    .bold()
                    .offset(y: -10)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subtitle: "Subtitle")
    }
}
