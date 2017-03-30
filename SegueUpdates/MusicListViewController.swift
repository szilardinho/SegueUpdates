//
//  MusicListViewController.swift
//  SegueUpdates
//
//  Created by Szi Gabor on 3/30/17.
//  Copyright © 2017 Szi. All rights reserved.
//

import UIKit

class MusicListViewController: UIViewController {
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }

    @IBAction func loadThirdScreenPressed(_ sender: Any) {
        let song = "Stunt 101"
        performSegue(withIdentifier: "PlaySongViewController", sender: song)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let desination = segue.destination as? PlaySongViewController {
            
            if let song = sender as? String {
                
                desination.selectedSong = song
            }
            
            
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
