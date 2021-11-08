//
//  RateCell.swift
//  RateExchangeApp
//
//  Created by Kushal Pathak on 08/11/21.
//

import UIKit

class RateCell: UITableViewCell {
    
    @IBOutlet weak var imgCurrency: UIImageView!
    @IBOutlet weak var lblCurrencyDescription: UILabel!
    @IBOutlet weak var currencyISO: UILabel!
    @IBOutlet weak var currencyAmount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
