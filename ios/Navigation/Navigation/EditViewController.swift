//
//  EditViewController.swift
//  Navigation
//
//  Created by KenPark on 2021/01/01.
//

import UIKit

protocol EditDelegate {
    func didMessageEditDonw(_ controller: EditViewController, message: String)
}

class EditViewController: UIViewController {
    var textWayValue = ""
    var textMessage = ""
    var delegate: EditDelegate?
    
    @IBOutlet var lblWay: UILabel!
    @IBOutlet var txMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblWay.text = textWayValue
        txMessage.text = textMessage
    }
    
    @IBAction func btnDone(_ sender: UIButton) {
        if delegate != nil {
            delegate?.didMessageEditDonw(self, message: txMessage.text!)
        }
        
        navigationController?.popViewController(animated: true)
    }
    
}
