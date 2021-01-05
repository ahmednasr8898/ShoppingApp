//
//  ProductGallaryTableViewCell.swift
//  ShoppingApp
//
//  Created by Ahmed Nasr on 12/31/20.
//
import UIKit

class ProductGallaryTableViewCell: UITableViewCell {

    @IBOutlet weak var productCollectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    var timer: Timer?
    var currentIndexPath = 0
    let productGalleryImages = [UIImage(named: "ar_banner-1"),UIImage(named: "ar_banner-2"),UIImage(named: "ar_banner-3"),UIImage(named: "ar_banner-4"), UIImage(named: "ar_banner-5"), UIImage(named: "ar_banner-6")]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCollectionView()
        setUpTimer()
        setUpPageControl()
        
    }
    func setUpCollectionView(){
        productCollectionView.register(UINib(nibName: "ProductGallaryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductGallaryCollectionViewCell")
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
    }
    func setUpTimer(){
        timer = Timer.scheduledTimer(timeInterval: 3.5, target: self, selector: #selector(moveProductImage), userInfo: nil, repeats: true)
    }
    @objc func moveProductImage(){
        if currentIndexPath < productGalleryImages.count - 1 {
            currentIndexPath += 1
        }else{
            currentIndexPath = 0
        }
        productCollectionView.scrollToItem(at: IndexPath(item: currentIndexPath, section: 0), at: .centeredHorizontally, animated: true)
        pageControl.currentPage = currentIndexPath
    }
    func setUpPageControl(){
        pageControl.numberOfPages = productGalleryImages.count
        pageControl.subviews.forEach {
            $0.transform = CGAffineTransform(scaleX: 1, y: 1)
        }
    }
}
extension ProductGallaryTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productGalleryImages.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductGallaryCollectionViewCell", for: indexPath) as! ProductGallaryCollectionViewCell
        cell.productImageView.image = productGalleryImages[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
