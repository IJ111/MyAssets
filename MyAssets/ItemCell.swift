//
//  ItemCell.swift
//  MyAssets
//
//  Created by Inga Klassy on 10/2/18.
//  Copyright © 2018 Inga Klassy. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var serialNumberLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    

    func updateLabels() {
        let bodyFont = UIFont.preferredFont(forTextStyle: UIFontTextStyle.body)
        nameLabel.font = bodyFont
        valueLabel.font = bodyFont
        
        let captionFont = UIFont.preferredFont(forTextStyle: UIFontTextStyle.caption1)
        serialNumberLabel.font = captionFont
    }
}
