//
//  MovieViewController.swift
//  VIPERExample
//
//  Created by Pedro Cid on 8/3/16.
//  Copyright © 2016 Pedro Cid. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, MovieViewProtocol {

    var input: MovieViewInputProtocol?
    var output: MovieViewOutputProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.output?.didRequestMovie("Matrix")
    }
}


extension MovieViewController: MoviePresenterOutputProtocol{

    func display(movie: MovieViewModel) {
    
        print("Movie \(movie.title)")
        
    }
    
}