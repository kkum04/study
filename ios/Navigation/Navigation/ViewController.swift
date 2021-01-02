//
//  ViewController.swift
//  Navigation
//
//  Created by KenPark on 2021/01/01.
//

import UIKit

class ViewController: UIViewController, EditDelegate {
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")
    
    var isOn = true
    
    @IBOutlet var txMessage: UITextField!
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = imgOn
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        if segue.identifier == "editButton" {
            editViewController.textWayValue = "segue : use button"
        } else if segue.identifier == "editBarButton" {
            editViewController.textWayValue = "segue : use Bar button"
        }
        
        editViewController.textMessage = txMessage.text!
        editViewController.delegate = self
        editViewController.isOn = isOn
    }

    func didMessageEditDonw(_ controller: EditViewController, message: String) {
        txMessage.text = message
    }
    
    func didImageOnOffDone(_ contoller: EditViewController, isOn: Bool) {
        self.isOn = isOn
        imgView.image = isOn ? imgOn : imgOff
    }
}

