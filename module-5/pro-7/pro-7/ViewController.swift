//
//  ViewController.swift
//  pro-7
//
//  Created by meet on 18/09/23.
//  Copyright © 2023 meet. All rights reserved.
//

import UIKit

var edata = [App(type: "Brand", gallery: ["2","3","4","5","6"]),
             App(type: "Shopping", gallery: ["3","2","4","5","6"]),
             App(type: "Fashion", gallery: ["4","3","2","6","5"]),
             App(type: "Home", gallery: ["5","2","4","5","6"])

]


class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "homecell", for: indexPath) as! TableViewCell
        cell.home_cv.tag = indexPath.section
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return edata.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return edata[section].type
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .brown
    }
    
    
}

extension TableViewCell:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 160, height: 160)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return edata[home_cv.tag].gallery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = home_cv.dequeueReusableCell(withReuseIdentifier: "homeitem", for: indexPath) as! homeCollectionViewCell
        cell.home_img.image=UIImage(named: edata[home_cv.tag].gallery[indexPath.row])
        return cell
   }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "collect", message: "_!_", preferredStyle:.alert)
        let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
        let more = UIAlertAction(title: "more", style: .destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(more)
        
        
    }
}




