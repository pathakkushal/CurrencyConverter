//
//  UIActivityIndicatorView.swift
//  RateExchangeApp
//
//  Created by Kushal Pathak on 05/11/21.
//

import UIKit

extension UIActivityIndicatorView {

    func dismissLoader() {
        self.stopAnimating()
        UIApplication.shared.endIgnoringInteractionEvents()
    }

}
