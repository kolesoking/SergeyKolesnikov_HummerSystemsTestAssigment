//
//  ProductTableViewCell.swift
//  SergeyKolesnikov_HummerSystemsTestAssigment
//
//  Created by Sergey Kolesnikov on 13.10.2022.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    // MARK: - Views
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var discriptionLabel: UILabel!
    @IBOutlet weak var priceView: UIView!
    @IBOutlet weak var priceLabel: UILabel!
    
    // MARK: - Properties
    
    var imageString = "" {
        didSet {
            // TODO: - add imageService
            mainImageView.image = UIImage(named: imageString)
        }
    }
    
    var titleText = "" {
        didSet {
            titleLabel.text = titleText
        }
    }
    
    var discriptionText = "" {
        didSet {
            discriptionLabel.text = discriptionText
        }
    }
    
    var priceText = "" {
        didSet {
            priceLabel.text = priceText
        }
    }
    
    // MARK: - UITableViewCell
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configuAppearance()
    }
    
    // MARK: - Private Methods
    
    private func configuAppearance() {
        // TODO: - configure
        
        priceView.backgroundColor = .gray
        priceView.layer.cornerRadius = 6
        priceView.layer.borderWidth = 3
        priceView.layer.borderColor = CGColor(red: 253, green: 58, blue: 105, alpha: 1)
    }
    
}
