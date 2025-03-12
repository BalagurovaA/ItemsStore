//
//  ViewController.swift
//  itemsStore
//
//  Created by Kristofer Sartorial on 3/11/25.
//

import UIKit

class ViewController: UIViewController {
    
    private var urlData: URLData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        urlData = URLData()
        urlData?.gettingData()
        
    }
    

    



}

