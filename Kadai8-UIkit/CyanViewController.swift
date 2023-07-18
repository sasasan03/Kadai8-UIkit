//
//  cyanViewController.swift
//  Kadai8-UIkit
//
//  Created by sako0602 on 2023/05/21.
//

import UIKit

class CyanViewController: UIViewController {

    @IBOutlet weak var slider1: UISlider!
    
    @IBOutlet weak var label1: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //MARK: AppDelegateクラスをインスタンス化する。sharedはシングルトン。
    let delegate = UIApplication.shared.delegate as? AppDelegate
    
    @IBAction func changeSlider1(_ sender: Any) {
        self.label1.text = "\(self.slider1.value)"
        delegate?.sliderValue = self.slider1.value
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("🍔：viewwillApperが呼ばれました")
        super.viewWillAppear(animated)
        self.slider1.value = delegate?.sliderValue ?? 0.5
        self.label1.text = "\(self.slider1.value)"
    }
}
