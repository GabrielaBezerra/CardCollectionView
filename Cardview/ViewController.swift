//
//  ViewController.swift
//  Cardview
//
//  Created by Gabriela Bezerra on 03/10/17.
//  Copyright © 2017 gabrielabezerra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var cardCollectionView: UICollectionView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.cardCollectionView.delegate = self
    self.cardCollectionView.dataSource = self
  }

  @IBAction func segmentedBarAction(_ sender: UISegmentedControl) {
    if let layout = self.cardCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
      layout.scrollDirection = (sender.selectedSegmentIndex == 0) ? .vertical : .horizontal
    }
    self.cardCollectionView.reloadData()
  }
  
}



extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {

  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 5
  }
  
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    Alert.show(title: "Tap!", msg: "Card nº \(indexPath.row)", view: nil, function: nil)
  }
  

}

