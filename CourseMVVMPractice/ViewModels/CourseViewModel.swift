//
//  CourseViewModel.swift
//  CourseMVVMPractice
//
//  Created by Camilo Cabana on 17/07/20.
//  Copyright © 2020 Camilo Cabana. All rights reserved.
//

import Foundation
import UIKit

struct CourseViewModel {
    let name: String
    var detailTextLabel: String
    let accessoryType: UITableViewCell.AccessoryType
    init(course: Course) {
        self.name = course.name
        self.detailTextLabel = "Lessons: \(course.number_of_lessons)"
        if course.number_of_lessons > 35 {
            self.detailTextLabel = "Lessons greater then 30 check it"
            self.accessoryType = .detailDisclosureButton
        } else {
            self.detailTextLabel = "Lessons: \(course.number_of_lessons)"
            self.accessoryType = .none
        }
    }
}
