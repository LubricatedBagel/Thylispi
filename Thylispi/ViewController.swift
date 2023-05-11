//
//  ViewController.swift
//  Thylispi
//
//  Created by Cyrus Butcher on 4/11/23.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    @IBOutlet weak var iconB: UIImageView!
    @IBOutlet weak var iconA: UIImageView!
    @IBOutlet weak var iconC: UIImageView!
    @IBOutlet weak var startTapped: UIButton!
    @IBOutlet weak var optionsTapped: UIButton!
    @IBOutlet weak var titleView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        soundEffect(soundName: "eyeAnger", fileType: "wav")
        backgroundSound(soundName: "cursedWind", fileType: "wav")
        }

    @IBAction func startTapped(_ sender: UIButton) {
        soundEffect(soundName: "tapped", fileType: "aiff")
        timerEventSpook()
        DispatchQueue.main.asyncAfter(deadline: .now()) { [self] in
            startTapped.backgroundColor = UIColor.black
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            startTapped.backgroundColor = UIColor.darkGray
        }
        playerOne.stop()
        }
    
    @IBAction func optionsTapped(_ sender: UIButton) {
        timerEventSpook()
        DispatchQueue.main.asyncAfter(deadline: .now()) { [self] in
            optionsTapped.backgroundColor = UIColor.black
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            optionsTapped.backgroundColor = UIColor.darkGray
        }
        }
   
    
    //make sound functions here
    //inside this function have a conditional if statement
    //if switch is active then dont play sound, else play sound
    
    
//---------------------------------------------------------------------------------------------------FUNC
    
    func timerEventSpook() {
        soundEffect(soundName: "eyeAnger", fileType: "wav")
        iconB.image = UIImage(named: "scareBear")
        titleView.image = UIImage(named: "titleTwo")
        iconC.image = UIImage(named: "darkEye")
        iconA.image = UIImage(named: "scareBear")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [self] in
            iconA.image = UIImage(named: "Icon")
            }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [self] in
            iconB.image = UIImage(named: "Icon")
            }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [self] in
            iconC.image = UIImage(named: "Icon")
            }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [self] in
            titleView.image = UIImage(named: "titleOne")
            }
            }
    
    @IBAction func unwind(_ seg: UIStoryboardSegue) {
        timerEventSpook()
        backgroundSound(soundName: "cursedWind", fileType: "wav")
    }
    
    }

