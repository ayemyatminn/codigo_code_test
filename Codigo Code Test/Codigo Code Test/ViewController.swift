//
//  ViewController.swift
//  Codigo Code Test
//
//  Created by Aye Myat Minn on 03/09/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onTapStateDataManagement(_ sender: Any) {
        let vc = WelcomeViewController.init()
        self.modalPresentationStyle = .none
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func onTapCodeManagement(_ sender: Any) {
        let vc = MovieListViewController.init()
        self.modalPresentationStyle = .none
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func onTapUIDesign(_ sender: Any) {
        
    }
}

