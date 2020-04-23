//
//  StackViewViewController.swift
//  autoLayout
//
//  Created by as on 4/23/20.
//  Copyright © 2020 as. All rights reserved.
//

import UIKit

class StackViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUPViews()
    }
    

    func setUPViews(){
       
        
            
            
            
            //padding
            stackView.isLayoutMarginsRelativeArrangement = true
            stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
            
        }
    }
}
