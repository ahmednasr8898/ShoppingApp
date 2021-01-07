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
       // return view.frame.height * 370 / 896
        return 370
    }
}
extension HomeViewController{
    /*["Noon Picks","Top Electronic","Fashoin Picks","Beauty Picks","Healthy Essentials","Top Home Picks","SuperMarkts Offers","Baby Picks"]*/
    func setData(){
        let noonPicks = ProductDetails(productImage: UIImage(named: "st-1")!, productDescription: "Baby Picks", productPrice: "120")
        let noonPicks1 = ProductDetails(productImage: UIImage(named: "st-1")!, productDescription: "Baby Picks", productPrice: "130")
        let noonPicks2 = ProductDetails(productImage: UIImage(named: "st-1")!, productDescription: "Baby Picks", productPrice: "140")
        let noonPicks3 = ProductDetails(productImage: UIImage(named: "st-1")!, productDescription: "Baby Picks", productPrice: "150")
        self.arrOfProduct.append(ProductModel(titleSection: "Baby Picks", productDetails: [noonPicks,noonPicks1,noonPicks2,noonPicks3]))
        
        let topElectronic = ProductDetails(productImage: UIImage(named: "st-8")!, productDescription: "Top Electronic", productPrice: "120")
        let topElectronic1 = ProductDetails(productImage: UIImage(named: "st-8")!, productDescription: "Top Electronic", productPrice: "130")
        let topElectronic2 = ProductDetails(productImage: UIImage(named: "st-8")!, productDescription: "Top Electronic", productPrice: "140")
        let topElectronic3 = ProductDetails(productImage: UIImage(named: "st-8")!, productDescription: "Top Electronic", productPrice: "150")
        let topElectronic4 = ProductDetails(productImage: UIImage(named: "st-8")!, productDescription: "Top Electronic", productPrice: "140")
        let topElectronic5 = ProductDetails(productImage: UIImage(named: "st-8")!, productDescription: "Top Electronic", productPrice: "150")
        self.arrOfProduct.append(ProductModel(titleSection: "Top Electronic", productDetails: [topElectronic,topElectronic1,topElectronic2,topElectronic3,topElectronic4,topElectronic5]))
        
        let fashoinPicks = ProductDetails(productImage: UIImage(named: "st-3")!, productDescription: "Fashoin Picks", productPrice: "120")
        let fashoinPicks1 = ProductDetails(productImage: UIImage(named: "st-3")!, productDescription: "Fashoin Picks", productPrice: "130")
        let fashoinPicks2 = ProductDetails(productImage: UIImage(named: "st-3")!, productDescription: "Fashoin Picks", productPrice: "140")
        let fashoinPicks3 = ProductDetails(productImage: UIImage(named: "st-3")!, productDescription: "Fashoin Picks", productPrice: "150")
        let fashoinPicks4 = ProductDetails(productImage: UIImage(named: "st-3")!, productDescription: "Fashoin Picks", productPrice: "140")
        let fashoinPicks5 = ProductDetails(productImage: UIImage(named: "st-3")!, productDescription: "Fashoin Picks", productPrice: "150")
        self.arrOfProduct.append(ProductModel(titleSection: "Fashoin Picks", productDetails: [fashoinPicks,fashoinPicks1,fashoinPicks2,fashoinPicks3,fashoinPicks4,fashoinPicks5]))
        
        let beautyPicks = ProductDetails(productImage: UIImage(named: "st-7")!, productDescription: "Beauty Picks", productPrice: "120")
        let beautyPicks1 = ProductDetails(productImage: UIImage(named: "st-7")!, productDescription: "Beauty Picks", productPrice: "130")
        let beautyPicks2 = ProductDetails(productImage: UIImage(named: "st-7")!, productDescription: "Beauty Picks", productPrice: "140")
        let beautyPicks3 = ProductDetails(productImage: UIImage(named: "st-7")!, productDescription: "Beauty Picks", productPrice: "150")
        let beautyPicks4 = ProductDetails(productImage: UIImage(named: "st-7")!, productDescription: "Beauty Picks", productPrice: "160")
        let beautyPicks5 = ProductDetails(productImage: UIImage(named: "st-7")!, productDescription: "Beauty Picks", productPrice: "170")
        self.arrOfProduct.append(ProductModel(titleSection: "Beauty Picks", productDetails: [beautyPicks,beautyPicks1,beautyPicks2,beautyPicks3,beautyPicks4,beautyPicks5]))
    }
}
