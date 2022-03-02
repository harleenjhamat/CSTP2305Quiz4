//
//  Activity.swift
//  2305Quiz4
//
//  Created by Harleen Jhamat on 2022-03-02.
//

import Foundation

struct Activity:  Identifiable, Decodable {
    
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool

}
