//
//  CreateAccountViewController.swift
//  Codigo Code Test
//
//  Created by Aye Myat Minn on 03/09/2022.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    @IBOutlet weak var ivBack: UIImageView!
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGestureRecognizerForBack = UITapGestureRecognizer(target: self, action: #selector(onTapBackButton))
        ivBack.isUserInteractionEnabled = true
        ivBack.addGestureRecognizer(tapGestureRecognizerForBack)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: String(describing: CreateAccountTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: CreateAccountTableViewCell.self))
    }

    @objc func onTapBackButton(){
        self.dismiss(animated: true, completion: nil)
    }

}

extension CreateAccountViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CreateAccountTableViewCell.self), for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.tableView.rowHeight
    }
    
}
