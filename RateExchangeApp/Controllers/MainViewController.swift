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

    // MARK: - Main methods
    // ------------------
    func checkIfApiIsOnLine() {
        imgStatus.image = nil
        statusIndicator.startAnimating()
        let url = Routes.apiCheckOnLine
        ApiService.shared.fetchApiData(urlString: url) { (response: ResultModel?, error: ErrorModel?) in
            if let error = error {
                self.showAlertMessage(titleStr: "Error", messageStr: error.Message ?? "")
            }
            print("API is online: \(response!.result)")
            self.imgStatus.image = response!.result ? #imageLiteral(resourceName: "online") : #imageLiteral(resourceName: "offline")
            self.statusIndicator.stopAnimating()
        }
    }

    // MARK: - View Controller Lifecycle
    // ---------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Currencies"
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.prefersLargeTitles = false
        checkIfApiIsOnLine()
    }
}
