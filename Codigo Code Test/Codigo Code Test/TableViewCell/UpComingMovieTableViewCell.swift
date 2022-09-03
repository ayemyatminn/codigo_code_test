//
//  UpComingMovieTableViewCell.swift
//  Codigo Code Test
//
//  Created by Aye Myat Minn on 03/09/2022.
//

import UIKit

class UpComingMovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieListCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        movieListCollectionView.delegate = self
        movieListCollectionView.dataSource = self
        movieListCollectionView.register(UINib(nibName: String(describing: MovieListCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: MovieListCollectionViewCell.self))
    }

    
}

extension UpComingMovieTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: MovieListCollectionViewCell.self), for: indexPath) as! MovieListCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 273, height: 281)
    }
    
}
