//
//  ViewController.swift
//  iOS-Tests
//
//  Created by emiliano.barbosa on 30/08/20.
//  Copyright © 2020 nEvbAr. All rights reserved.
//

import UIKit

class CombineViewController: UIViewController {
    
    var items : [Item?]? = []
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)   {
        print("init nibName style")
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        items?.append(Item(color: "#0487D9ff"))
        items?.append(Item(color: "#014023ff"))
        items?.append(Item(color: "#F2994Bff"))
        items?.append(Item(color: "#F2AF88ff"))
        items?.append(Item(color: "#0D0D0Dff"))
    }

    // note slightly new syntax for 2017
    required init?(coder aDecoder: NSCoder) {
        print("init coder style")
        super.init(coder: aDecoder)
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        addCards()
    }


}

extension CombineViewController {
    
    func addCards() {
        for item in self.items! {
            let cardView = CardView(frame: CGRect(x: 0, y: 0, width: view.bounds.width - 32, height: view.bounds.height * 0.7))
            cardView.center = view.center
            
            let gesture = UIPanGestureRecognizer()
            gesture.addTarget(self, action: #selector(handlerCard))
            
            cardView.addGestureRecognizer(gesture)
            
            view.addSubview(cardView)
        }
    }
    
    @objc func handlerCard(gesture: UIPanGestureRecognizer) {
        if let card = gesture.view {
            let point = gesture.translation(in: view)
            card.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
            card.transform = CGAffineTransform(rotationAngle: point.x / view.bounds.width * 0.4)
            
            if gesture.state == .ended {
                UIView.animate(withDuration: 0.2) {
                    card.center = self.view.center
                    card.transform = .identity
                }
            }
        }
    }
}

