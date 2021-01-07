//
//  ItemSelectedViewController.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 1/7/21.
//
import UIKit

class ItemSelectedViewController: UIViewController {

    @IBOutlet weak var productCollectionView: UICollectionView!
    @IBOutlet weak var ImageGIF: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var productModelLabel: UILabel!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    let itemImages = [UIImage(named: "st-2")!,UIImage(named: "st-2")!,UIImage(named: "st-2")!,UIImage(named: "st-2")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectionView()
        pageControl.numberOfPages = itemImages.count
        setData()
    }
    func setUpCollectionView(){
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
    }
    func setData(){
        ImageGIF.loadGif(name: "GIF")
        productModelLabel.text = "Samsoung"
        productPriceLabel.text = "EGP 14,999.00"
        productDescriptionLabel.text = "Galaxy Note 10 Plus Aura Black 12GB RAM 256GB 4G LTE"
    }
}
extension ItemSelectedViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        itemImages.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemSelectedCollectionViewCell", for: indexPath) as! ItemSelectedCollectionViewCell
        pageControl.currentPage = indexPath.row 
        cell.productItemImageView.image = itemImages[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let witdh = scrollView.frame.width - (scrollView.contentInset.left*2)
        let index = scrollView.contentOffset.x / witdh
        let roundedIndex = round(index)
        self.pageControl?.currentPage = Int(roundedIndex)
    }
}

