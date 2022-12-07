//
//  ResultViewController.swift
//  NamesCompApp
//
//  Created by Алексей on 07.12.2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var namesLable: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    
    var firstName: String!
    var secondName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namesLable.text = "\(firstName ?? "") and \(secondName ?? "")"

    }
    

    

}
