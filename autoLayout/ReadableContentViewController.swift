//
//  ReadableContentViewController.swift
//  autoLayout
//
//  Created by as on 4/20/20.
//  Copyright © 2020 as. All rights reserved.
//

import UIKit

class ReadableContentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpViews()
    }
    
    func setUpViews(){
        
        let lbl = makeLabel(withText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
        
        view.addSubview(lbl)
        
        
        let redView = UIView()
        redView.backgroundColor = .red
        redView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(lbl     )

        NSLayoutConstraint.activate([
            
            lbl.topAnchor.constraint(equalTo: view.readableContentGuide.topAnchor),
            lbl.bottomAnchor.constraint(equalTo: view.readableContentGuide.bottomAnchor),
            lbl.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor),
            lbl.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor)
       
            ])
        

        
    }
    
    func makeLabel (withText text : String)->UILabel{
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        label.numberOfLines = 0
        label.font =  UIFont.systemFont(ofSize: 20)
        
        return label
    }

    
    

}
