//
//  ViewController.swift
//  autoLayoutWith10.3
//
//  Created by as on 4/13/20.
//  Copyright © 2020 as. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUpViews()
    }

    
    func setUpViews(){
       upperLeft()
       upperRight()
       lowerLeft()
       lowerRightBtn()
       redView()
    }
    //___________________________________________________________
    func makeLabel (withText text : String)->UILabel{
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        
        return label
    }
    
    func makeSecondaryLabel(withText text : String)->UILabel{
    
    let secondaryLabel = UILabel()
    secondaryLabel.translatesAutoresizingMaskIntoConstraints = false
    secondaryLabel.text = text
    secondaryLabel.backgroundColor = .red
    return secondaryLabel
    
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
      let storyboard = UIStoryboard(name: "Intrinsic_content_size", bundle: nil)
      let vc = storyboard.instantiateViewController(withIdentifier: "second")
      self.modalPresentationStyle = .fullScreen
      self.present(vc, animated: true)
    }
    
    func makeView()->UIView{
        let redView = UIView()
        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.backgroundColor = .red
        return redView
    }
    
    //____________________________________________________________________
    
    //___________________________________________________________________
    func upperLeft(){
        let upperLabel = makeLabel(withText: "upperLeft")
        
        view.addSubview(upperLabel)
        
        upperLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        
        upperLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
    }
    
    func upperRight(){
        
        
        let upperRight = makeLabel(withText: "upperRight")
        view.addSubview(upperRight)
        upperRight.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        upperRight.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
    }
    
    func lowerLeft(){
        let lowerLeft = makeSecondaryLabel(withText: "lowerLeft")
        view.addSubview(lowerLeft)
        lowerLeft.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant:-8).isActive = true
        lowerLeft.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive  = true
        
    }
    
    
    func lowerRightBtn(){
        let lowerRightBtn = makeBtn(withText: "paypal")
        view.addSubview(lowerRightBtn)
        lowerRightBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant:
            -8).isActive = true
        lowerRightBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
    }
    
    
    func redView(){
        
        let redview = makeView()
        view.addSubview(redview)
        redview.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redview.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
//        //option 1 - mentioning size explicitly
//        redview.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        redview.widthAnchor.constraint(equalToConstant: 30).isActive = true
//    }
    
        
        
        //option 2 - pinning or defining constraints
        
        redview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        redview.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300).isActive = true
        
        redview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        redview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        
        
    }
    //____________________________________________________________________
    
    
}


