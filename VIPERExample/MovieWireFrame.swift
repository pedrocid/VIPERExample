//
//  MovieWireFrame.swift
//  VIPERExample
//
//  Created by Pedro Cid on 8/3/16.
//  Copyright © 2016 Pedro Cid. All rights reserved.
//

import UIKit

final class MovieWireFrame: MovieWireFrameProtocol {
    
    static func setupMovieSearcherModule() -> UIViewController{
        
        let apiClient = MovieAPIClient()
        let presenter = MoviePresenter()
        
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let view: MovieViewController = storyBoard.instantiateViewControllerWithIdentifier("MovieViewController") as! MovieViewController
        
        let interactor = MovieInteractor(apiClient: apiClient)
        
        
        view.output = presenter
        
        presenter.output = view
        presenter.interactor = interactor
        
        interactor.output = presenter
        
        return view
    }
}

extension MovieViewController: MoviePresenterOutputProtocol{}

extension MoviePresenter: MovieViewOutputProtocol{}
extension MoviePresenter: MovieInteractorOutputProtocol{}
