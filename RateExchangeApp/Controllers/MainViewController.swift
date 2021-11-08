//
//  MainViewController.swift
//  RateExchangeApp
//
//  Created by Kushal Pathak on 05/11/21.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - IBOutlets
    // -----------------
    @IBOutlet weak var imgStatus: UIImageView!
    @IBOutlet weak var statusIndicator: UIActivityIndicatorView!


    // MARK: - View Controller Lifecycle
    // ---------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Currencies"
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.prefersLargeTitles = false
    }
}
