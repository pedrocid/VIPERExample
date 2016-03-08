//
//  MovieInteractorProtocol.swift
//  VIPERExample
//
//  Created by Pedro Cid on 8/3/16.
//  Copyright © 2016 Pedro Cid. All rights reserved.
//

import Foundation

protocol MovieInteractorProtocol{
    
    var output: MovieInteractorOutputProtocol? { get set  }


    init(apiClient: MovieAPIClientProtocol)
    
    func searchMovie(title: String)

}

protocol MovieInteractorOutputProtocol{
 
    func presentMovie(movie: Movie)
}