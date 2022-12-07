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
    
    private var resultValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultValue = findResult()
        
        namesLable.text = "\(firstName ?? "") and \(secondName ?? "")"
        resultLabel.text = resultValue.formatted(.percent)
        
        progressView.progress = Float(resultValue) / 100
        
        progressView.transform = progressView.transform.scaledBy(x: 1, y: 4)
    }
    
    private func findValue(for name: String) -> Int {
        var count = 0
        
        for character in name.lowercased() {
            switch character {
            case "a":
                count += 1
            case "b":
                count += 2
            case "c":
                count += 3
            case "d":
                count += 4
            case "e":
                count += 5
            case "u":
                count += 6
            case "o":
                count += 7
            case "f":
                count += 8
            default :
                count += 0
            }
        }
        return count
    }
    
    private func findResult() -> Int {
        var result = 0
        
        let firstValue = findValue(for: firstName)
        let secondValue = findValue(for: secondName)
        let absDifference = abs(firstValue - secondValue)
        
        switch  absDifference {
        case 0, 1, 2:
            result = 100
        case 3, 4:
            result = 65
        case 5:
            result = 50
        case 6:
            result = 40
        default:
            result = 30
        }
        return result
    }
    

}
