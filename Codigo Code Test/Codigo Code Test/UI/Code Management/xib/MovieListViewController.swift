//
//  MovieListViewController.swift
//  Codigo Code Test
//
//  Created by Aye Myat Minn on 03/09/2022.
//

import UIKit

class MovieListViewController: UIViewController {
    
    @IBOutlet weak var ivBack: UIImageView!
    @IBOutlet weak var movieListTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGestureRecognizerForBack = UITapGestureRecognizer(target: self, action: #selector(onTapBackButton))
        ivBack.isUserInteractionEnabled = true
        ivBack.addGestureRecognizer(tapGestureRecognizerForBack)
        
        movieListTableView.delegate = self
        movieListTableView.dataSource = self
        movieListTableView.register(UINib(nibName: String(describing: MovieTypeTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: MovieTypeTableViewCell.self))
        movieListTableView.register(UINib(nibName: String(describing: UpComingMovieTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: UpComingMovieTableViewCell.self))
    }
    
    @objc func onTapBackButton(){
        self.dismiss(animated: true, completion: nil)
    }

}

extension MovieListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 || indexPath.row == 2 {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: MovieTypeTableViewCell.self), for: indexPath) as! MovieTypeTableViewCell
                cell.movieListName = "Popular Movie List"
                return cell
            }else{
                let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: MovieTypeTableViewCell.self), for: indexPath) as! MovieTypeTableViewCell
                cell.movieListName = "Upcoming Movie List"
                return cell
            }
            
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: UpComingMovieTableViewCell.self), for: indexPath) as! UpComingMovieTableViewCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 || indexPath.row == 2 {
            return 50
        }else{
            return 200
        }
    }
}
