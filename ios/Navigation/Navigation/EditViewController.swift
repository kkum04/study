//
//  EditViewController.swift
//  Navigation
//
//  Created by KenPark on 2021/01/01.
//

import UIKit

protocol EditDelegate {
    func didMessageEditDonw(_ controller: EditViewController, message: String)
    func didImageOnOffDone(_ contoller: EditViewController, isOn: Bool)
}

class EditViewController: UIViewController {
    var textWayValue = ""
    var textMessage = ""
    var delegate: EditDelegate?
    var isOn = false
    
    @IBOutlet var lblWay: UILabel!
    @IBOutlet var txMessage: UITextField!
    @IBOutlet var swisOn: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblWay.text = textWayValue
        txMessage.text = textMessage
        swisOn.isOn = isOn
    }
    
    @IBAction func swImageOnOff(_ sender: UISwitch) {
        isOn = sender.isOn
    }
    
    @IBAction func btnDone(_ sender: UIButton) {
        if delegate != nil {
            delegate?.didMessageEditDonw(self, message: txMessage.text!)
            delegate?.didImageOnOffDone(self, isOn: isOn)
        }
        
        navigationController?.popViewController(animated: true)
    }
    
}
