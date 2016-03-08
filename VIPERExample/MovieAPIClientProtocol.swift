//
//  APIClientProtocol.swift
//  VIPERExample
//
//  Created by Pedro Cid on 8/3/16.
//  Copyright © 2016 Pedro Cid. All rights reserved.
//

import Foundation

protocol MovieAPIClientProtocol{

    func getMovie(title: String, completion: (Movie?, NSError?) -> ())

}