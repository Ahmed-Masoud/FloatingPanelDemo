//
//  MyTableVC.swift
//  FloatingPanelDemo
//
//  Created by ahmed.ehab on 3/14/21.
//

import UIKit

class CollectionCell: UICollectionViewCell {
    
}

class TableCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var myCollection: UICollectionView!
    var colors: [UIColor] = [.red, .blue, .yellow, .green, .brown, .cyan]
    override func awakeFromNib() {
        myCollection.delegate = self
        myCollection.dataSource = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(CollectionCell.self)", for: indexPath) as! CollectionCell
        cell.contentView.backgroundColor = colors[Int.random(in: 0..<colors.count)]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: 100)
    }
    
    
}



class MyTableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(TableCell.self)") as! TableCell
        return cell
    }

    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
