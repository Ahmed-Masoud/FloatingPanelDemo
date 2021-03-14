//
//  ViewController.swift
//  FloatingPanelDemo
//
//  Created by ahmed.ehab on 3/14/21.
//

import UIKit
import FloatingPanel

class ViewController: UIViewController {
    private var fpc: FloatingPanelController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let appearance = SurfaceAppearance()
        appearance.backgroundColor = .clear
        appearance.borderColor = .clear
        appearance.borderWidth = 0
        appearance.shadows = []
        fpc = FloatingPanelController()
        fpc.invalidateLayout()
        let contentVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "\(MyTableVC.self)") as! MyTableVC
        fpc.set(contentViewController: contentVC)
        fpc.track(scrollView: contentVC.myTable)
        fpc.surfaceView.appearance = appearance
        fpc.surfaceView.grabberHandle.isHidden = true
        fpc.surfaceView.contentPadding = .init(top: 0, left: 0, bottom: 0, right: 0)
        fpc.surfaceView.containerMargins = .init(top: 0, left: 0, bottom: 0, right: 0)
        fpc.addPanel(toParent: self)
    }


}

