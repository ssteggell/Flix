//
//  MoviesDetailViewController.swift
//  Flix
//
//  Created by Spencer Steggell on 3/2/22.
//

import UIKit
import AlamofireImage

class MoviesDetailViewController: UIViewController {
    
    @IBOutlet weak var backdropImage: UIImageView!
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieSynopsis: UILabel!
    
    
    var movie: [String:Any]!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTitle.text = movie["title"] as? String
        movieSynopsis.text = movie["overview"] as? String
        movieSynopsis.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let backdropBaseURL = "https://image.tmdb.org/t/p/w780"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseURL + posterPath)
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: backdropBaseURL + backdropPath)
        
        
       posterImage.af.setImage(withURL: posterUrl!)
       backdropImage.af.setImage(withURL: backdropUrl!)

    }
}
