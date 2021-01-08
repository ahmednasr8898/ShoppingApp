//
//  MyCartViewController.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/8/21.
//
import UIKit

class MyCartViewController: UIViewController {
    
    var myWishListLabel = UILabel()
    var numberCartItemLabel = UILabel()
    var cartTableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9495360089, green: 0.9495360089, blue: 0.9495360089, alpha: 1)
        setUpMyWishLabel()
        setUpCartTableView()
    }
}
extension MyCartViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCartTableViewCell",for: indexPath) as! MyCartTableViewCell
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = #colorLiteral(red: 0.9495360089, green: 0.9495360089, blue: 0.9495360089, alpha: 1)
    }
}
