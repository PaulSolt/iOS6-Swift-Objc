//
//  PersonController.swift
//  iOS6-Hybrid-StarWarsSearch
//
//  Created by Paul Solt on 7/22/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

private let baseURL = URL(string: "https://swapi.co/api/people")!

@objc(LSIPersonController)
class PersonController: NSObject {
    
    @objc(sharedController) static let shared = PersonController()
    
    @objc func searchForPeople(with searchTerm: String,
                         completion: @escaping ([LSIPerson]?, Error?) -> Void) {
        
        
        var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)!
        let searchItem = URLQueryItem(name: "search", value: searchTerm)
        components.queryItems = [searchItem]
        let url = components.url!
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            
            // parse the data
            
            guard let data = data else {
                completion(nil, NSError())  // TODO: use custom enum type
                return
            }
            
            do {
                
                guard let dictionary = try JSONSerialization.jsonObject(with: data, options: []) as? [String : Any],
                    let personDictionaries = dictionary["results"] as? [[String : Any]]
                else {
                    throw NSError() // TODO: update to enum type
                }
                
//                var people = [LSIPerson]()
//                for dictionary in personDictionaries {
//                    if let person = LSIPerson(dictionary: dictionary) {
//                        people.append(person)
//                    }
//                }
                
                let people = personDictionaries.compactMap { LSIPerson(dictionary: $0) }
                
                completion(people, nil)
                
                
            } catch {
                completion(nil, error)
                return
            }
            
            
            
            }.resume()
    }
}
