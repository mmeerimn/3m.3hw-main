//
//  ViewController.swift
//  3m.3hw
//
//  Created by Meerim on 25.05.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func LoginButton(_ sender: Any) {
        openMain()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func openMain(){
        let mainVc = storyboard?.instantiateViewController(withIdentifier: "main_vc")
        
        navigationController?.pushViewController(mainVc!, animated: true)
    }

}

