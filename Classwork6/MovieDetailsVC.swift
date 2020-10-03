//
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by Noura on 10/3/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVC: UIViewController {
    //outlets 
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var pgLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    @IBOutlet weak var actor1ImgView: UIImageView!
    @IBOutlet weak var actor2ImgView: UIImageView!
    @IBOutlet weak var actor3ImgView: UIImageView!
    
    @IBOutlet weak var actor1NameLabel: UILabel!
    @IBOutlet weak var actor2NameLabel: UILabel!
    @IBOutlet weak var actor3NameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareMovieData()

        // Do any additional setup after loading the view.
    }
    
    func prepareMovieData(){
        let movie = MarvelMovieData[0]
        
        movieImage.image = UIImage(named: movie.movieName)
        pgLabel.text = movie.pgRating
        rateLabel.text = "\(movie.rating)"
        yearLabel.text = "\(movie.movieReleaseDate)"
        
        actor1ImgView.image = UIImage(named: movie.actors[0])
        actor2ImgView.image = UIImage(named: movie.actors[1])
        actor3ImgView.image = UIImage(named: movie.actors[2])
        
        actor1NameLabel.text = "\(movie.actors)"
        actor2NameLabel.text = "\(movie.actors)"
        actor3NameLabel.text = "\(movie.actors)"
        
    }
     //actions

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
