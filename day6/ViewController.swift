//
//  ViewController.swift
//  day6
//
//  Created by Jlius Suweno on 06/10/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var buttonOnClick: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
    }

    @IBAction func buttonOnClick(_ sender: UIButton) {
        if sender.tag == 0 {
            print("button A")
        } else if sender.tag == 1 {
            print("button B")
        } else {
            print("button C")
            self.performSegue(withIdentifier: "segueA", sender: nil)
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare for segue")
        if segue.identifier == "segueA" {
            let destination : ViewController2 = segue.destination as! ViewController2
            destination.setLabelTitle("page B")
//            destination.labelTitle = "page B"
        }
    }
    
    func reload() {
        textField.text = ""
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myIdentifier", for: indexPath)
        cell.textLabel?.text = "name \(indexPath.section) \(indexPath.row)"
        cell.detailTextLabel?.text = "2131"
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
}

