//
//  SecondViewController.swift
//  Thylispi
//
//  Created by Cyrus Butcher on 4/17/23.
//

import UIKit
import AVFoundation

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var tappedCounter = 0
    
    @IBOutlet weak var questionLab: UILabel!
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var noViewed: UIButton!
    @IBOutlet weak var yesViewed: UIButton!
    @IBOutlet weak var genderChoice: UIPickerView!
    @IBOutlet weak var genderLab: UILabel!
    @IBOutlet weak var confirmName: UIButton!
    @IBOutlet weak var textFieldView: UITextField!
    @IBOutlet weak var nameLab: UILabel!
    @IBOutlet weak var confirmGender: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        soundEffect(soundName: "tapped", fileType: "aiff")
        backgroundSound(soundName: "characterCreation", fileType: "wav")
        genderChoice.setValue(UIColor(red: 231, green: 209, blue: 234, alpha: 1.0), forKey: "textColor")
//        genderChoice.setValue(UIFont(name: "Melno Regular", size: 19.0), forKey: "font")
        
        
        textFieldView.text = ""
        confirmName.isHidden = false
        textFieldView.isHidden = false
        genderChoice.isHidden = false
        yesViewed.isHidden = true
        noViewed.isHidden = true
        questionLab.isHidden = true
        
    }
    
   
    
    
    @IBAction func genderEnter(_ sender: UIButton) {
        soundEffect(soundName: "tapped", fileType: "aiff")
        genderLab.text = gender
        confirmGender.isHidden = true
        genderChoice.isHidden = true
        pronoun()
        if confirmName.isHidden == true && confirmGender.isHidden == true {
            yesViewed.isHidden = false
            noViewed.isHidden = false
            questionLab.isHidden = false
        }
        
        }
   
    @IBAction func textField(_ sender: UITextField) {
        name = textFieldView.text ?? "NAME"
        }
   
    @IBAction func nameEnter(_ sender: UIButton) {
        soundEffect(soundName: "tapped", fileType: "aiff")
        let name = textFieldView.text ?? "Oliver"
        nameLab.text = name
        confirmName.isHidden = true
        textFieldView.isHidden = true
        if confirmName.isHidden == true && confirmGender.isHidden == true {
            yesViewed.isHidden = false
            noViewed.isHidden = false
            questionLab.isHidden = false
        }
        }
   
    
    
    
//------------------------------------------------------------------------------------------------------BAD END
    
    @IBAction func bearTapped(_ sender: UIButton) {
        soundEffect(soundName: "tapped", fileType: "aiff")
        tappedCounter += 1
        if tappedCounter > 99 {
            playerOne.stop()
            DispatchQueue.main.asyncAfter(deadline: .now()) { [self] in
                iconView.image = UIImage(named: "scareBear")
        }
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
// EDIT          soundEffect(soundName: "", fileType: "")
        }
            for _ in 1...10 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
                    iconView.image = UIImage(named: "scareBear")
        }
            DispatchQueue.main.asyncAfter(deadline: .now()) { [self] in
                    iconView.image = UIImage(named: "Icon")                }
        }
            performSegue(withIdentifier: "goBack3", sender: self)
        } else {
// EDIT         soundEffect(soundName: "", fileType: "")
            iconView.image = UIImage(named: "scareBear")
        }
        }
    
// ---------------------------------------------------------------------------------------------YES/NO

   
    @IBAction func yesTapped(_ sender: UIButton) {
        iconView.image = UIImage(named: "scareBear")
        DispatchQueue.main.asyncAfter(deadline: .now()) { [self] in
            yesViewed.backgroundColor = UIColor.black
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            yesViewed.backgroundColor = UIColor.darkGray
        }
        }
  
    @IBAction func noTapped(_ sender: UIButton) {
        soundEffect(soundName: "tapped", fileType: "aiff")
        DispatchQueue.main.asyncAfter(deadline: .now()) { [self] in
            noViewed.backgroundColor = UIColor.black
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            noViewed.backgroundColor = UIColor.darkGray
        }
        refresh()
        }
    
    
//   ----------------------------------------------------------------------------------------PICKER
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return selectableGenders.count
    }
   
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Bong")
    }
   
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        gender = selectableGenders[row]
        genderLab.text = gender
        return genderLab.text
    }
    
   
    func refresh() {
        confirmName.isHidden = false
        textFieldView.isHidden = false
        genderChoice.isHidden = false
        confirmGender.isHidden = false
        yesViewed.isHidden = true
        noViewed.isHidden = true
        questionLab.isHidden = true
        nameLab.text = "NAME"
    }
    
    func pronoun() {
    if gender == selectableGenders[0] {
            genderLab.text = "He/Him"
    } else if gender == selectableGenders[1] {
            genderLab.text = "She/Her"
    } else if gender == selectableGenders[2] {
            genderLab.text = "They/Them"
    }
    }
    
//    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
//        var pickerLabel: UILabel? = (view as? UILabel)
////        if pickerLabel == nil {
//            pickerLabel = UILabel()
////            pickerLabel?.font = UIFont(name: "Melno Regular", size: 19.0)
////            pickerLabel?.textAlignment = .center
////        }
//        pickerLabel?.text = selectableGenders[row]
//        pickerLabel?.textColor = UIColor(red: 231, green: 209, blue: 234, alpha: 1.0)
//        genderLab.text = selectableGenders[row]
//        return pickerLabel!
//    }
    
        }
