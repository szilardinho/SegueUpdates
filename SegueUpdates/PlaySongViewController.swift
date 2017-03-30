//
//  PlaySongViewController.swift
//  SegueUpdates
//
//  Created by Szi Gabor on 3/30/17
//  Copyright © 2017 Szi. All rights reserved.
//

import UIKit

class PlaySongViewController: UIViewController {

    @IBOutlet weak var songTitleLabel: UILabel!
    
    private var _selectecdSong:String!
    
    var selectedSong: String {
        get{
            return _selectecdSong
        } set {
            _selectecdSong = newValue
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

            songTitleLabel.text = _selectecdSong
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
