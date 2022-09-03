//
//  WelcomeViewController.swift
//  Codigo Code Test
//
//  Created by Aye Myat Minn on 03/09/2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var ivClose: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGestureRecognizerForBack = UITapGestureRecognizer(target: self, action: #selector(onTapCloseButton))
        ivClose.isUserInteractionEnabled = true
        ivClose.addGestureRecognizer(tapGestureRecognizerForBack)
    }

    @objc func onTapCloseButton(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onTapCreateAccount(_ sender: Any) {
        let vc = CreateAccountViewController.init()
        self.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}
