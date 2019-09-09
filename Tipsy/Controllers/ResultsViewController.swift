//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Matias Martinelli on 17/06/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    
    @IBOutlet weak var totalLable: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!

    var totalText: String?
    var labelText: String?
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLable.text = totalText
        settingsLabel.text = labelText

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func reculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
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
