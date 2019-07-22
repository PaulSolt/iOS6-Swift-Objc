//
//  PersonController.swift
//  iOS6-Hybrid-StarWarsSearch
//
//  Created by Paul Solt on 7/22/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

private let baseURL = URL(string: "https://swapi.co/api/people")!

class PersonController: NSObject {
    
    static let shared = PersonController()
    
    func searchForPeople(with searchTerm: String, completion: @escaping ([LSIPerson]?, Error?) -> Void) {
        
        
        var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)!
        let searchItem = URLQueryItem(name: "search", value: searchTerm)
        components.queryItems = [searchItem]
        let url = components.url!
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            }.resume()
    }
}
