//
//  MovieTypeTableViewCell.swift
//  Codigo Code Test
//
//  Created by Aye Myat Minn on 03/09/2022.
//

import UIKit

class MovieTypeTableViewCell: UITableViewCell {

    @IBOutlet weak var movieListType: UILabel!
    
    var movieListName: String!{
        didSet {
            movieListType.text = movieListName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
