//
//  ViewController.swift
//  CodePathIOS
//
//  Created by Nam Hoang on 1/18/23.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundColors = [UIColor.white, UIColor.lightGray, UIColor.cyan, UIColor.systemTeal]
    var index = 0

    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var majorTextField: UITextField!
    @IBOutlet weak var sportsTextFiled: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func changeColorDidTapped(_ sender: Any) {
        // change the background color in circular way from a list colors
        self.index = (self.index + 1) % self.backgroundColors.count
        self.view.backgroundColor = self.backgroundColors[self.index]
    }
    
    @IBAction func IntroduceSelfDidTapped(_ sender: UIButton) {
        // Lets us choose the title we have selected from the segmented
        // In our example that is whether it is first, second, third or forth
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        // Creating a constant of type string that holds an introduction.
        // Introduction receives the values from the outlet connections.
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!). I attend \(schoolNameTextField.text!) with a focus in \(majorTextField.text!). I am currently in my \(year!) year and my favorite sports is \(sportsTextFiled.text!). I hate cats, so I own \(numberOfPetsLabel.text!) dogs and it is \(morePetsSwitch.isOn) that I want more pets."
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
                
            present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

