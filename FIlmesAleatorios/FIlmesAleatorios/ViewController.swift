//
//  ViewController.swift
//  FIlmesAleatorios
//
//  Created by Fábio França on 30/07/20.
//  Copyright © 2020 music.com.chama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moviesLabel: UILabel!
    @IBOutlet weak var randomMovieLabel: UILabel!
    @IBOutlet weak var addMovieTextField: UITextField!
    @IBOutlet weak var addMovieBtn: UIButton!
    @IBOutlet weak var randomMovieStackView: UIStackView!
    @IBOutlet weak var addMovieStackVIew: UIStackView!
    @IBOutlet weak var randomMovieSpokenLabel: UILabel!
    @IBOutlet weak var showMoviesStackView: UIStackView!
    
    var movies: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showMoviesStackView.isHidden = true
        randomMovieStackView.isHidden = true
    }
    
    func updateMoviesLabel() {
        moviesLabel.text = movies.joined(separator: ", ")
    }
    
    @IBAction func addMoviesBtnWasPressed(_ sender: Any) {
        guard let movie = addMovieTextField.text else{return}
        
        if !movie.isEmpty {
            showMoviesStackView.isHidden = false
            movies.append(movie)
            updateMoviesLabel()
            addMovieTextField.text = ""
            
            
            if movies.count > 1 {
                randomMovieStackView.isHidden = false
                randomMovieLabel.isHidden = true
                randomMovieSpokenLabel.isHidden = true
            }
        }
    }
    
    @IBAction func randomMovieBtnWasPressed(_ sender: Any) {
        guard let randomMovie = movies.randomElement() else{return}
        
        randomMovieLabel.text = randomMovie
        
        randomMovieLabel.isHidden = false
        randomMovieSpokenLabel.isHidden = false
    }
    
    
}

