//
//  MoviePresenterProtocol.swift
//  VIPERExample
//
//  Created by Pedro Cid on 8/3/16.
//  Copyright © 2016 Pedro Cid. All rights reserved.
//

import Foundation

protocol MoviePresenterProtocol{

    var wireframe: MovieWireFrameProtocol! { get set  }
    var interactor: MovieInteractorProtocol! { get set  }

    var output: MoviePresenterOutputProtocol! { get set  }

    func didRequestMovie(title: String)


}


protocol MoviePresenterOutputProtocol{
    
    func display(movie: MovieViewModel)
    
}


class MovieViewModel {
    
    private var movie: Movie
    
    
    var title: String { return self.movie.title }
    var director: String { return self.movie.director }
    var year: String { return self.movie.year }
    var plot: String { return self.movie.plot }
    
    init(movie: Movie){
    
        self.movie = movie
    }
}