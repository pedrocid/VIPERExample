//
//  MovieAPIClient.swift
//  VIPERExample
//
//  Created by Pedro Cid on 8/3/16.
//  Copyright © 2016 Pedro Cid. All rights reserved.
//

import Foundation

class MovieAPIClient: MovieAPIClientProtocol {
    
    func getMovie(title: String, completion: (Movie?, NSError?) -> ()){
    
        completion(Movie(title: title, director: "",year:  "",plot: ""),nil)
    }

}