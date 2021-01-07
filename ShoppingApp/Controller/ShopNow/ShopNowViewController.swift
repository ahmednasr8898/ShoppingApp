//
//  ShoPNowViewController.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/6/21.
//

import UIKit

class ShopNowViewController: UIViewController {

    @IBOutlet weak var ProductTableView: UITableView!
    @IBOutlet weak var backImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProductTableView()
        setUpBackImage()
    }
    func setUpProductTableView(){
        ProductTableView.register(UINib(nibName: "ShopNowTableViewCell", bundle: nil), forCellReuseIdentifier: "ShopNowTableViewCell")
        ProductTableView.register(UINib(nibName: "MainProductShopNowTableViewCell", bundle: nil), forCellReuseIdentifier: "MainProductShopNowTableViewCell")
        ProductTableView.delegate = self
        ProductTableView.dataSource = self
        ProductTableView.tableFooterView = UIView()
        ProductTableView.separatorStyle = .none
    }
    func setUpBackImage(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(backImageOnClick(sender:)))
        backImageView.isUserInteractionEnabled = true
        backImageView.addGestureRecognizer(tapGesture)
        
    }
    @objc func backImageOnClick(sender: UITapGestureRecognizer){
        dismiss(animated: true, completion: nil)
    }
}
extension ShopNowViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ShopNowTableViewCell", for: indexPath)
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainProductShopNowTableViewCell", for: indexPath) 
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 150
        }
        return tableView.frame.height
    }
}
