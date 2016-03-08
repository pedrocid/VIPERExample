//
//  MovieInteractor.swift
//  VIPERExample
//
//  Created by Pedro Cid on 8/3/16.
//  Copyright © 2016 Pedro Cid. All rights reserved.
//

import Foundation

class MovieInteractor: MovieInteractorProtocol {
    
    private var apiClient: MovieAPIClientProtocol
    
    var output: MovieInteractorOutputProtocol?
    
    required init(apiClient: MovieAPIClientProtocol){
    
        self.apiClient = apiClient
    }
    
    func searchMovie(title: String){
    
        self.apiClient.getMovie(title) { movie,_ in
        
            self.output?.presentMovie(movie!)
        }
        
        
    }
}