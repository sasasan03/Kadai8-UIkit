//
//  OrangeViewController.swift
//  Kadai8-UIkit
//
//  Created by sako0602 on 2023/05/21.
//

import UIKit

class OrangeViewController: UIViewController {
    
    @IBOutlet weak var slider2: UISlider!
    
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let delegate = UIApplication.shared.delegate as? AppDelegate
    
    @IBAction func changeSlider2(_ sender: Any) {
        self.label2.text = "\(slider2.value)"
        delegate?.sliderValue = self.slider2.value
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.slider2.value = delegate?.sliderValue ?? 0.65
        self.label2.text = "\(self.slider2.value)"
        print("🍹：viewwillApperが呼ばれました")
    }
}
