//
//  User.swift
//  app2doo
//
//  Created by Marcelo de Abreu on 24/05/23.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
