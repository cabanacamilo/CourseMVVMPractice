//
//  Course.swift
//  CourseMVVMPractice
//
//  Created by Camilo Cabana on 17/07/20.
//  Copyright © 2020 Camilo Cabana. All rights reserved.
//

import Foundation

struct Course: Decodable {
    let id: Int
    let name: String
    let number_of_lessons: Int
}
