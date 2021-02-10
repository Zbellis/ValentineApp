//
//  ViewController.swift
//  Lea's App
//
//  Created by Zachary Ellis on 2/8/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickLoveLetter: UIPickerView!
    
    
    
    @IBOutlet weak var loadedRow: UILabel!
    @IBAction func openLetter(_ sender: Any) {
        
        performSegue(withIdentifier: "segue", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondController = segue.destination as! SecondViewController
        secondController.selectedLoveLetter = loadedRow.text!
    }
    
    
    let loveLetters = ["Are Feeling Happy", "Need Workout Motivation", "Want to Feel Special", "Need a Study Break"]
//    "Are Feeling Lonely", "Miss Me", "Are Having a Great Day", "Are Having a Bad Day", "Feel Insecure", "Are Feeling Hungry", "On Your Period", "Are Feeling Naughty", "Feel Old",

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 250.0
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var label: UILabel
        if let v = view as? UILabel{
                    label = v
                }
                else{
                    label = UILabel()
                }
                
                label.textColor = UIColor.white
                label.textAlignment = .center
                label.font = UIFont(name: "Bell MT", size: 32)
                label.lineBreakMode = .byWordWrapping;
                label.numberOfLines = 0;
                label.text = loveLetters[row]
                label.sizeToFit()
                label.text = loveLetters[row]
                
                return label
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        120.0
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        loveLetters.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return loveLetters[row]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print()

    }


    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        loadedRow.text = loveLetters[row]
    }

}
