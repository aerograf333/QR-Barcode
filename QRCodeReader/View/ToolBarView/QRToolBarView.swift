//
//  ToolBarView.swift
//  QRCodeReader
//
//  Created by Rkhorenko on 11/2/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class QRToolBarView: UIView {

    var delegate : QRToolbarViewDelegate?
    
    @IBOutlet internal var containerView: UIView!
    
    @IBOutlet weak var QRToolBar: UIToolbar!
    @IBOutlet weak var history: UIBarButtonItem!
    
    @IBOutlet weak var map: UIBarButtonItem!
    
    @IBOutlet weak var scaner: UIBarButtonItem!
    
    @IBOutlet weak var quality: UIBarButtonItem!
    
    @IBOutlet weak var settings: UIBarButtonItem!
    

    @IBAction func historyButtonPressed(_ sender: Any) {
        delegate?.historyButtonPressed()
    }
    
    @IBAction func mapButtonPressed(_ sender: Any) {
        delegate?.mapButtonPressed()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        Bundle.main.loadNibNamed("QRToolBarView", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleWidth, .flexibleWidth]
    }

}
