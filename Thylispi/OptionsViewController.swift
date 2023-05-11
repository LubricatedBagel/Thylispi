//
//  OptionsViewController.swift
//  Thylispi
//
//  Created by Cyrus Butcher on 5/1/23.
//

import UIKit
import AVFoundation

class OptionsViewController: UIViewController {

    @IBOutlet weak var musicLab: UILabel!
    @IBOutlet weak var gameSoundLab: UILabel!
    
    @IBOutlet weak var backgroundSound: UISwitch!
    @IBOutlet weak var creditsTapped: UIButton!
    @IBOutlet weak var directionsTapped: UIButton!
    @IBOutlet weak var gameSound: UISwitch!
    @IBOutlet weak var warningTapped: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Thylispi.backgroundSound(soundName: "ambientC", fileType: "wav")
        soundEffect(soundName: "tapped", fileType: "aiff")
    }
    
    @IBAction func creditsTapped(_ sender: UIButton) {
        soundEffect(soundName: "tapped", fileType: "aiff")
        DispatchQueue.main.asyncAfter(deadline: .now()) { [self] in
           creditsTapped.backgroundColor = UIColor.black
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            creditsTapped.backgroundColor = UIColor.darkGray
        }
        }
   
    @IBAction func warningTapped(_ sender: UIButton) {
        soundEffect(soundName: "tapped", fileType: "aiff")
        DispatchQueue.main.asyncAfter(deadline: .now()) { [self] in
          warningTapped.backgroundColor = UIColor.black
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
         warningTapped.backgroundColor = UIColor.darkGray
        }
        }
   
    @IBAction func directionsTapped(_ sender: UIButton){
        soundEffect(soundName: "tapped", fileType: "aiff")
        DispatchQueue.main.asyncAfter(deadline: .now()) { [self] in
            directionsTapped.backgroundColor = UIColor.black
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            directionsTapped.backgroundColor = UIColor.darkGray
        }
        }
    
//-----------------------------------------------------------------------------------------------SWITCHES
    
    @IBAction func gameSound(_ sender: UISwitch) {
        soundEffect(soundName: "tapped", fileType: "aiff")
        if gameSound.isOn == true {
            gameSoundVar = true
            gameSoundLab.text = "ON"
            } else {
            gameSoundLab.text = "OFF"
            gameSoundVar = false
                playerTwo.stop()
        }
        }
   
    @IBAction func backgroundSound(_ sender: UISwitch) {
        soundEffect(soundName: "tapped", fileType: "aiff")
        if backgroundSound.isOn == true {
            backgroundMusic = true
            musicLab.text = "ON"
        } else {
            backgroundMusic = false
            playerOne.stop()
            musicLab.text = "OFF"
        }
        }
    
    @IBAction func homeTapped(_ sender: UIButton) {
        soundEffect(soundName: "tapped", fileType: "aiff")
        performSegue(withIdentifier: "goBack2", sender: self)
    }
    
    @IBAction func unwind(_ seg: UIStoryboardSegue) {
       
    }
  
    }
