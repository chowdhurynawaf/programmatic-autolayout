//
//  Intrinsic_content_sizeViewController.swift
//  autoLayoutWith10.3
//
//  Created by as on 4/14/20.
//  Copyright © 2020 as. All rights reserved.
//

import UIKit

class Intrinsic_content_sizeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpViews()
    }
    

    func setUpViews(){
        upperleft()
        upperTextField()
        Btn()
    
    }
    
    
    
    func makeLabel (withText text : String)->UILabel{
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        
        return label
    }
    
    
    func makeTextField (withPlaceHolder text : String)-> UITextField{
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .lightGray
        textField.placeholder = text
        return textField
    }
    
    func upperleft ()->UILabel{
        let upperleftLbl = makeLabel(withText: "upperleft")
        view.addSubview(upperleftLbl)
        upperleftLbl .topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        
        upperleftLbl .leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        upperleftLbl.setContentHuggingPriority(UILayoutPriority(rawValue: 252), for: .horizontal)
        
        return upperleftLbl
       
    }
    
    func upperTextField(){
       
        
        let textfield = makeTextField(withPlaceHolder: "enter your name")
               view.addSubview(textfield)
        textfield.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
               textfield.leadingAnchor.constraint(equalTo: upperleft().trailingAnchor, constant: 8).isActive = true
        textfield.firstBaselineAnchor.constraint(equalTo: upperleft().firstBaselineAnchor)
        textfield.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
    
        
        
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
         let storyboard = UIStoryboard(name: "Image", bundle: nil)
         let vc = storyboard.instantiateViewController(withIdentifier: "imageVC")
         self.modalPresentationStyle = .fullScreen
         self.present(vc, animated: true)
       }
    
    // making a custom big label
    class Biglabel : UILabel{
    
        override var intrinsicContentSize: CGSize{
            return CGSize(width: 300, height: 200)
        }

    
    }
    
    func Btn()->UIButton{
        let btn = makeBtn(withText: "go to next page")
        view.addSubview(btn)
        btn.topAnchor.constraint(equalTo: upperleft().bottomAnchor, constant: 60).isActive = true
        btn.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
        btn.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        return btn
    }
   

}
