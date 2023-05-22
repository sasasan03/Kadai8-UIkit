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
        print("test")
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
