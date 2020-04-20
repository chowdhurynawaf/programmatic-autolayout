//
//  SpacingViewController.swift
//  autoLayout
//
//  Created by as on 4/18/20.
//  Copyright © 2020 as. All rights reserved.
//

import UIKit

class SpacingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpViews()
    }
    func setUpViews(){
        
        let leadingGuide = UILayoutGuide()
        let okBtn  = makeBtn(withText: "ok", color: UIColor.darkRed)
        let middleGuide = UILayoutGuide()
        let cancelBtn = makeBtn(withText: "cancel", color: UIColor.darkBlue)
        let trailingGuide = UILayoutGuide()
        
        
        view.addSubview(okBtn)
        view.addSubview(cancelBtn)
        view.addLayoutGuide(leadingGuide)
        view.addLayoutGuide(middleGuide)
        view.addLayoutGuide(trailingGuide)
        
       let margins = view.layoutMarginsGuide

     margins.leadingAnchor.constraint(equalTo: leadingGuide.leadingAnchor).isActive = true
     leadingGuide.trailingAnchor.constraint(equalTo: okBtn.leadingAnchor).isActive = true
     okBtn.trailingAnchor.constraint(equalTo: middleGuide.leadingAnchor).isActive = true
    middleGuide.trailingAnchor.constraint(equalTo: cancelBtn.leadingAnchor).isActive = true
    cancelBtn.trailingAnchor.constraint(equalTo: trailingGuide.leadingAnchor).isActive = true
    trailingGuide.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true


        okBtn.widthAnchor.constraint(equalTo: cancelBtn.widthAnchor).isActive = true

        leadingGuide.widthAnchor.constraint(equalTo: middleGuide.widthAnchor).isActive = true
        leadingGuide.widthAnchor.constraint(equalTo : trailingGuide.widthAnchor).isActive = true


        leadingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        middleGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        trailingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        okBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        cancelBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        leadingGuide.heightAnchor.constraint(equalToConstant: 1).isActive = true
        middleGuide.heightAnchor.constraint(equalToConstant: 1).isActive = true
        trailingGuide.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
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
           print("Button tapped")
           let storyboard = UIStoryboard(name: "ReadableContent", bundle: nil)
           let vc = storyboard.instantiateViewController(withIdentifier: "ReadableContent")
           self.modalPresentationStyle = .fullScreen
           self.present(vc, animated: true)
       }

}

extension UIColor{
    
    static let darkBlue =  UIColor(red: 10/255, green: 132/255, blue: 255/255, alpha: 1)
    static let darkRed =  UIColor(red: 255/255, green: 59/255, blue: 48/255, alpha: 1)
    
    
}
