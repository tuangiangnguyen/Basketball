//
//  ImportNameViewController.swift
//  PointBasketball
//
//  Created by Nguyễn Giang on 07/02/2023.
//

import UIKit

class ImportNameViewController: UIViewController {

    @IBOutlet weak var minsTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var teamATextField: UITextField!
    @IBOutlet weak var teamBTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func tapSaveButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.teamA = teamATextField.text!
        vc.teamB = teamBTextField.text!
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
