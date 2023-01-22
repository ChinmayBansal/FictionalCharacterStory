//
//  ViewController.swift
//  FictionalCharacterStory
//
//  Created by Chinmay Bansal on 1/20/23.
//

import UIKit

class ViewController: UIViewController {
    
    let enemies = Batman(text: "Batman has many enemies. Some of his enemies include the Joker, Bane, the Riddler, Two-Face, and Penguin. He has many more and deals with street thugs on a nightly basis.", image: UIImage(named: "Joker")!)
    let backstory = Batman(text: "Batman has a very depressing story. Even though his is wealthy, he lives in a city where his parents were killed by a mugger in front of him when he was a kid. He vows to avenge his parents by by fighting criminals like the ones that killed his parents.", image: UIImage(named: "Backstory")!)
    let gadgets = Batman(text: "Batman is very wealthy so he can afford a lot of amazing technology. Perhaps the most amazing tech he has is his Batmobile. He also has other gadgets such as batarangs, batclaws, a grappeling hook. He has many more that help him depending on who he is dealing with.", image: UIImage(named: "Gadgets")!)

    
    
    
    var batmans: [Batman] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        batmans = [enemies, backstory, gadgets]
    }
    


    
    @IBAction func didTapped(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.batman = batmans[0]
            } else if tappedView.tag == 1 {
                detailViewController.batman = batmans[1]
            } else if tappedView.tag == 2 {
                detailViewController.batman = batmans[2]
            } else {
                print("no Dinosaur was tapped, please check your selection.")
            }
        }
    }
    
    
    
}

