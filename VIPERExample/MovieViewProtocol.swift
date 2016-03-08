//
//  MovieViewProtocol.swift
//  VIPERExample
//
//  Created by Pedro Cid on 8/3/16.
//  Copyright © 2016 Pedro Cid. All rights reserved.
//

import Foundation


protocol MovieViewProtocol{

    var input: MovieViewInputProtocol? { get set }
    var output: MovieViewOutputProtocol? { get set  }
}

protocol MovieViewInputProtocol{

    func display(movie: MovieViewModel)
}

protocol MovieViewOutputProtocol{
    
    func didRequestMovie(title: String)
}