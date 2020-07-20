//
//  CourseMVVMPracticeTests.swift
//  CourseMVVMPracticeTests
//
//  Created by Camilo Cabana on 17/07/20.
//  Copyright © 2020 Camilo Cabana. All rights reserved.
//

import XCTest
@testable import CourseMVVMPractice

class CourseMVVMPracticeTests: XCTestCase {

    func testCourseViewModelUnderThreshold() {
        let course = Course(id: 0, name: "test", number_of_lessons: 5)
        let courseViewModel = CourseViewModel(course: course)
        XCTAssertEqual(course.name, courseViewModel.name)
        XCTAssertEqual("Lessons: \(course.number_of_lessons)", courseViewModel.detailTextLabel)
        XCTAssertEqual(courseViewModel.accessoryType, UITableViewCell.AccessoryType.none )
    }
    
    func testCourseViewModelOverThreshold() {
        let course = Course(id: 0, name: "test", number_of_lessons: 40)
        let courseViewModel = CourseViewModel(course: course)
        XCTAssertEqual(course.name, courseViewModel.name)
        XCTAssertEqual("Lessons greater then 30 check it", courseViewModel.detailTextLabel)
        XCTAssertEqual(courseViewModel.accessoryType, UITableViewCell.AccessoryType.detailDisclosureButton )
    }

}
