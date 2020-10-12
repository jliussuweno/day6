//
//  ViewController2.swift
//  day6
//
//  Created by Jlius Suweno on 06/10/20.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var label: UILabel!
    var labelTitle: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = labelTitle
        setupGesture()
    }
    
    func setLabelTitle(_ title: String){
        labelTitle = title
    }
    
    func setupGesture(){
        var tap : UITapGestureRecognizer
        tap = UITapGestureRecognizer(target: self, action: #selector(click))
        label.addGestureRecognizer(tap)
        label.isUserInteractionEnabled = true
    }
    
    @objc func click(){
        print(label.text!)
    }
    
    @IBAction func logoutClick(_ sender: UIButton) {
        
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
