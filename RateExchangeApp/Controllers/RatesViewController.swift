//
//  RatesViewController.swift
//  RateExchangeApp
//
//  Created by Kushal Pathak on 08/11/21.
//

import UIKit

class RatesViewController: UITableViewController {
    
    // MARK: - Properties
    // ------------------
    private let refreshCtrl = UIRefreshControl()
    private var allRates: RatesDetailModel?
    private let cellId = "cellRate"

    // MARK: - IBOutlets
    // -----------------
   
    @IBOutlet weak var lblCurrenciesDate: UILabel!
    
    // MARK: - Main methods
    // --------------------
    @objc func fetchRatesData() {
        let spinner = showLoader(view: self.view)
        let url = Routes.latestDetailedRatesUri
        ApiService.shared.fetchApiData(urlString: url) { (rates: RatesDetailModel?, error: ErrorModel?) in
            if let error = error {
                spinner.dismissLoader()
                self.showAlertMessage(titleStr: "Error", messageStr: error.Message ?? "")
            }
            guard let rates = rates else { return }
            self.allRates = rates
            self.tableView.reloadData()
            self.lblCurrenciesDate.text = "Last update date: \(self.allRates!.date)"
            self.refreshCtrl.endRefreshing()
            print("Last update date: \(self.allRates!.date)")
            spinner.dismissLoader()
        }
    }
    
    func setupRefreshControl() {
        if #available(iOS 10.0, *) {
            tableView.refreshControl = refreshCtrl
        } else {
            tableView.addSubview(refreshCtrl)
        }
        refreshCtrl.addTarget(self, action: #selector(fetchRatesData), for: .valueChanged)
    }

    // MARK: - Table View delegate methods
    // -----------------------------------
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allRates?.rates.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as? RateCell else { return UITableViewCell() }
        guard let data = allRates?.rates else { return cell }
        let rateData = data[indexPath.row]
        cell.lblCurrencyDescription.text = rateData.currency
        cell.currencyISO.text = rateData.symbol
        cell.currencyAmount.text = String(rateData.value)
        cell.imgCurrency.image = UIImage(named: "\(rateData.symbol.lowercased())")
        return cell
    }

    // MARK: - View Controller Lifecycle
    // ---------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupRefreshControl()
        fetchRatesData()
        
        navigationItem.title = "ECB Rates"
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}
