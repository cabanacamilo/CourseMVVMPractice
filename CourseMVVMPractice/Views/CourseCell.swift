//
//  CourseCell.swift
//  CourseMVVMPractice
//
//  Created by Camilo Cabana on 17/07/20.
//  Copyright © 2020 Camilo Cabana. All rights reserved.
//

import UIKit

class CourseCell: UITableViewCell {
    
    var courseViewModel: CourseViewModel! {
        didSet {
            textLabel?.text = courseViewModel.name
            detailTextLabel?.text = courseViewModel.detailTextLabel
            accessoryType = courseViewModel.accessoryType
        }
    }
    
//    var course: Course! {
//        didSet {
//            textLabel?.text = course.name
//            if course.number_of_lessons > 35 {
//                accessoryType = .detailDisclosureButton
//                detailTextLabel?.text = "Lessons greater then 30 check it"
//            } else {
//                detailTextLabel?.text = "Lessons: \(course.number_of_lessons)"
//                accessoryType = .none
//            }
//        }
//    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        contentView.backgroundColor = isHighlighted ? .highlightColor : .white
        textLabel?.textColor = isHighlighted ? .white : .black
        detailTextLabel?.textColor = isHighlighted ? .white : .black
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        textLabel?.font = .boldSystemFont(ofSize: 24)
        textLabel?.numberOfLines = 0
        detailTextLabel?.textColor = .black
        detailTextLabel?.font = .systemFont(ofSize: 20)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
