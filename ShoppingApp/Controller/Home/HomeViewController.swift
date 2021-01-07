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
    var arrOfProduct = [ProductModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.backgroundImage = UIImage()
        setUpTableView()
        setData()
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
        return arrOfProduct.count + 2
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainProductTableViewCell", for: indexPath) as! MainProductTableViewCell
        cell.showNowButton.addTarget(self, action: #selector(shopNowOnClick(sender:)), for: .touchUpInside)
        cell.setUpCell(title: arrOfProduct[indexPath.row-2].titleSection, arrOfProduct: arrOfProduct[indexPath.row-2].productDetails)
        return cell
    }
    @objc func shopNowOnClick(sender: UIButton){
        let st = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ShopNowViewController")
        st.modalPresentationStyle = .fullScreen
        self.present(st, animated: true, completion: nil)
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
        //return view.frame.height * 370 / 896
        return 370
    }
}
extension HomeViewController{
    func setData(){
        let noonPicks1 = ProductDetails(productImage: UIImage(named: "st-2")!, productDescription: "Samsoung Galaxy Note 10 Plus", productPrice: "13,999.00")
        let noonPicks2 = ProductDetails(productImage: UIImage(named: "st-2")!, productDescription: "Samsoung Galaxy Note 10 Plus", productPrice: "13,999.00")
        let noonPicks3 = ProductDetails(productImage: UIImage(named: "st-2")!, productDescription: "Samsoung Galaxy Note 10 Plus", productPrice: "13,999.00")
        let noonPicks4 = ProductDetails(productImage: UIImage(named: "st-2")!, productDescription: "Samsoung Galaxy Note 10 Plus", productPrice: "13,999.00")
        let noonPicks5 = ProductDetails(productImage: UIImage(named: "st-2")!, productDescription: "Samsoung Galaxy Note 10 Plus", productPrice: "13,999.00")
        let noonPicks6 = ProductDetails(productImage: UIImage(named: "st-2")!, productDescription: "Samsoung Galaxy Note 10 Plus", productPrice: "13,999.00")
        let noonPicks7 = ProductDetails(productImage: UIImage(named: "st-2")!, productDescription: "Samsoung Galaxy Note 10 Plus", productPrice: "13,999.00")
        let noonPicks8 = ProductDetails(productImage: UIImage(named: "st-2")!, productDescription: "Samsoung Galaxy Note 10 Plus", productPrice: "13,999.00")
        self.arrOfProduct.append(ProductModel(titleSection: "Home Picks", productDetails: [noonPicks1,noonPicks2,noonPicks3,noonPicks4,noonPicks5,noonPicks6,noonPicks7,noonPicks8]))
        self.arrOfProduct.append(ProductModel(titleSection: "Top Rate", productDetails: [noonPicks1,noonPicks2,noonPicks3,noonPicks4,noonPicks5,noonPicks6,noonPicks7,noonPicks8]))
        self.arrOfProduct.append(ProductModel(titleSection: "Top Sale", productDetails: [noonPicks1,noonPicks2,noonPicks3,noonPicks4,noonPicks5,noonPicks6,noonPicks7,noonPicks8]))
        self.arrOfProduct.append(ProductModel(titleSection: "Most Popular", productDetails: [noonPicks1,noonPicks2,noonPicks3,noonPicks4,noonPicks5,noonPicks6,noonPicks7,noonPicks8]))
        self.arrOfProduct.append(ProductModel(titleSection: "Offers", productDetails: [noonPicks1,noonPicks2,noonPicks3,noonPicks4,noonPicks5,noonPicks6,noonPicks7,noonPicks8]))
        self.arrOfProduct.append(ProductModel(titleSection: "New Picks", productDetails: [noonPicks1,noonPicks2,noonPicks3,noonPicks4,noonPicks5,noonPicks6,noonPicks7,noonPicks8]))
        self.arrOfProduct.append(ProductModel(titleSection: "Recommended For You", productDetails: [noonPicks1,noonPicks2,noonPicks3,noonPicks4,noonPicks5,noonPicks6,noonPicks7,noonPicks8]))
    }
}
