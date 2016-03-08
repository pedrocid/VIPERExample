//
//  MoviePresenter.swift
//  VIPERExample
//
//  Created by Pedro Cid on 8/3/16.
//  Copyright © 2016 Pedro Cid. All rights reserved.
//

import Foundation

class MoviePresenter: MoviePresenterProtocol,MovieViewOutputProtocol {
    
    var wireframe: MovieWireFrameProtocol!
    var interactor: MovieInteractorProtocol!
    var output: MoviePresenterOutputProtocol!
    
    private var model: Movie?
    
    func didRequestMovie(title: String){
    
        self.interactor.searchMovie(title)
    }
    
    
}

extension MoviePresenter: MovieInteractorOutputProtocol{

    func presentMovie(movie: Movie){
    
        self.output.display(MovieViewModel(movie: movie))
    }
}