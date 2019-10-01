//
//  AlbumDetailViewController.swift
//  Albums
//
//  Created by William Chen on 9/30/19.
//  Copyright © 2019 William Chen. All rights reserved.
//

import UIKit

class AlbumDetailViewController: UIViewController {
    @IBOutlet weak var albumName: UITextField!
    
    @IBOutlet weak var artist: UITextField!
    @IBOutlet weak var genresSeparated: UITextField!
    @IBOutlet weak var URL: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
