
//
//  AdaptiveLayoutViewController.swift
//  autoLayout
//
//  Created by as on 4/24/20.
//  Copyright © 2020 as. All rights reserved.
//

import UIKit

class AdaptiveLayoutViewController: UIViewController {
    
    var topConstraint = NSLayoutConstraint()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        setUpViews()
    }
    
    
    
    func setUpViews(){
        
        let lbl = makeLabel(withText: "watch me up and down")
        let btn = makeBtn(withText: "up/down", color: .blue)
        
        view.addSubview(lbl)
        view.addSubview(btn)
        
        topConstraint = lbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80)
        topConstraint.isActive  = true
        
        
        lbl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        btn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        

        
        
        
        
        
    }
    
    func makeBtn(withText text : String , color : UIColor)->UIButton{
        let Btn = UIButton()
        Btn.translatesAutoresizingMaskIntoConstraints = false
        Btn.setTitle(text, for: .normal)
        Btn.backgroundColor = color
        Btn.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        Btn.titleLabel?.adjustsFontSizeToFitWidth = true
        Btn.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        
        
        return Btn
    }
    
    
    @objc func buttonAction(sender: UIButton!) {
        
        
        if topConstraint.constant == 80{
            topConstraint.constant = 80*2
        }
        else{
            topConstraint.constant = 80
        }
    }
    
    
    func makeLabel (withText text : String )->UILabel{
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        
        return label
    }
}
