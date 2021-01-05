//
//  ViewController.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 12/31/20.
//
import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var productTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.backgroundImage = UIImage()
        setUpTableView()
    }
    func setUpTableView(){
        productTableView.register(UINib(nibName: "ProductGallaryTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductGallaryTableViewCell")
        productTableView.register(UINib(nibName: "ProductStoryTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductStoryTableViewCell")
        productTableView.register(UINib(nibName: "MainProductTableViewCell", bundle: nil), forCellReuseIdentifier: "MainProductTableViewCell")
        productTableView.delegate = self
        productTableView.dataSource = self
        productTableView.tableFooterView = UIView()
        productTableView.separatorStyle = .none
    }
}
extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProductGallaryTableViewCell", for: indexPath)
            return cell
        }
        if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProductStoryTableViewCell", for: indexPath)
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainProductTableViewCell", for: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //return view.frame.height * 0.22
        if indexPath.row == 0{
            return tableView.frame.height * 0.28
        }
        if indexPath.row == 1{
            //return tableView.frame.height * 0.17
            //return tableView.frame.height * 0.25
            return 150
        }
       // return view.frame.height * 370 / 896
        return 370
    }
}

