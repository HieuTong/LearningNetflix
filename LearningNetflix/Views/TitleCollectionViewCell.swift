//
//  TitleCollectionViewCell.swift
//  LearningNetflix
//
//  Created by HieuTong on 12/06/2022.
//

import UIKit
import SDWebImage

class TitleCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "TitleCollectionViewCell"
    @IBOutlet weak var posterImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func configure(with model: String) {
        let urlImage = "https://image.tmdb.org/t/p/w500\(model)"  
        guard let url = URL(string: urlImage) else { return }
        posterImageView.sd_setImage(with: url, completed: nil)
    }
}
