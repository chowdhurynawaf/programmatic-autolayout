//
//  ImageViewController.swift
//  autoLayoutWith10.3
//
//  Created by as on 4/16/20.
//  Copyright © 2020 as. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpViews()
    }
    
    
    func setUpViews(){
        show()
        
    }
    
    
    func makeLabel (withText text : String)->UILabel{
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textAlignment = .center
        label.backgroundColor = .yellow
        
        return label
    }
    
    func makeImage (named : String)->UIImageView{
        
        
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: named)
        view.setContentHuggingPriority(UILayoutPriority(rawValue: 249), for: .vertical)
        view.setContentCompressionResistancePriority(UILayoutPriority(749), for: .vertical)
      
        return view
        
    }
    
    func show(){
        
        let img = makeImage(named: "nawaf")
        view.addSubview(img)
//        img.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
//        img.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        img.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        img.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        img.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        img.setContentHuggingPriority(UILayoutPriority(rawValue: 399), for: .horizontal)
//        img.contentCompressionResistancePriority(for: .vertical)
        
        
        
        let lbl = makeLabel(withText: "this is a label")
        view.addSubview(lbl)
        lbl.topAnchor.constraint(equalTo: img.bottomAnchor, constant: 8).isActive = true
        lbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        lbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        
        let btn = makeBtn(withText: "go to next page")
        view.addSubview(btn)
        btn.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        btn.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 40).isActive = true
        btn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        
        
        
        
        
        
        
    }
    
    func makeBtn(withText text : String)->UIButton{
        let Btn = UIButton()
        Btn.translatesAutoresizingMaskIntoConstraints = false
        Btn.setTitle(text, for: .normal)
        Btn.backgroundColor = .blue
        Btn.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        return Btn
    }
    
    
    @objc func buttonAction(sender: UIButton!) {
        print("Button tapped")
        let storyboard = UIStoryboard(name: "spacing", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "spacingVC")
        self.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
  
    
    
    

   

}
