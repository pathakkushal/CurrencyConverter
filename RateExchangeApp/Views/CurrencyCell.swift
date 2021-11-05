//
//  CurrencyCell.swift
//  RateExchangeApp
//
//  Created by Kushal Pathak on 05/11/21.
//

import UIKit

class CurrencyCell: UITableViewCell {

    @IBOutlet weak var imgCurrency: UIImageView!
    @IBOutlet weak var lblCurrencyDescr: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
