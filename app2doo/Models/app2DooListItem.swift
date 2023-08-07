//
//  app2DooListItem.swift
//  app2doo
//
//  Created by Marcelo de Abreu on 24/05/23.
//

import Foundation

struct app2DooListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool

    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
