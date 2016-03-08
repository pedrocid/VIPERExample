//
//  MovieViewController.swift
//  VIPERExample
//
//  Created by Pedro Cid on 8/3/16.
//  Copyright © 2016 Pedro Cid. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, MovieViewProtocol {
    
    @IBOutlet weak var searchBar: UISearchBar! {
    
        didSet{
        
            searchBar.delegate = self
        }
    }

    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieYear: UILabel!
    @IBOutlet weak var moviePlot: UITextView!
    @IBOutlet weak var movieDirector: UILabel!
    
    var input: MovieViewInputProtocol?
    var output: MovieViewOutputProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


extension MovieViewController: MoviePresenterOutputProtocol{

    func display(movie: MovieViewModel) {
    
       
        self.movieTitle.text = movie.title
        
        self.movieYear.text = movie.year
        
        self.movieDirector.text = movie.director
        
        self.moviePlot.text = movie.plot
    }
    
}

extension MovieViewController: UISearchBarDelegate{

    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        
        self.output?.didRequestMovie(searchText)
        
    }

}
