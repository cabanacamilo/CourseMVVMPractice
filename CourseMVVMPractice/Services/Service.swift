//
//  Service.swift
//  CourseMVVMPractice
//
//  Created by Camilo Cabana on 17/07/20.
//  Copyright © 2020 Camilo Cabana. All rights reserved.
//

import Foundation

class Service {
    static let shared = Service()
    
    func fetchCourses(completion: @escaping ([Course]?, Error?) -> ()) {
        let urlString = "https://api.letsbuildthatapp.com/jsondecodable/courses"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(nil, error)
                print(error)
                return
            }
            guard let data = data else { return }
            do {
                let courses = try JSONDecoder().decode([Course].self, from: data)
                DispatchQueue.main.async {
                    completion(courses, nil)
                }
            } catch let jsonError {
                print(jsonError)
            }
        }.resume()
    }
    
}
