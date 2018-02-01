//
//  KeyboardViewController.swift
//  Calculator
//
//  Created by Guilherme Gatto on 31/01/18.
//  Copyright © 2018 Guilherme Gatto. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    
    var calculatorView: UIView!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }
    
    
    
    
    func loadInterface(){
        
        let calculatorNib = UINib(nibName: "Calculator", bundle: nil)
        calculatorView = calculatorNib.instantiate(withOwner: self, options: nil)[0] as! UIView
        view.addSubview(calculatorView)
        view.backgroundColor = calculatorView.backgroundColor
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    override func textWillChange(_ textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(_ textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
        
        var textColor: UIColor
        let proxy = self.textDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.dark {
            textColor = UIColor.white
        } else {
            textColor = UIColor.black
        }
        self.nextKeyboardButton.setTitleColor(textColor, for: [])
    }

}
