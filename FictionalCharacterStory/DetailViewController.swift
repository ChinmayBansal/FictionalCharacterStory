//
//  DetailViewController.swift
//  FictionalCharacterStory
//
//  Created by Chinmay Bansal on 1/20/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    var batman: Batman?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let batman = batman {
                print(batman.text)
        }
        
        if let batman = batman {
            // Configure the dinosaur image and dynamic labels
            Image.image = batman.image
            Text.text = batman.text
            
        }
    }
    
    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var Text: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
