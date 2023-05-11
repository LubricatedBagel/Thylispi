//
//  GameViewController.swift
//  Thylispi
//
//  Created by Cyrus Butcher on 4/28/23.
//

import UIKit
import AVFoundation



class GameViewController: UIViewController {
    
    @IBOutlet weak var storyText: UILabel!
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var optionTwoText: UIButton!
    @IBOutlet weak var optionOneText: UIButton!
    @IBOutlet weak var optionThreeText: UIButton!
    
    @IBOutlet weak var baggedTapped: UIButton!
    @IBOutlet weak var homeTapped: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundSound(soundName: "dungeon", fileType: "mp3")
       soundEffect(soundName: "goBack", fileType: "wav")
    }
    
    
//---------------------------------------------------------------------------------------------------BUTTON
    
    @IBAction func optionOneTapped(_ sender: UIButton) {
        soundEffect(soundName: "tapped", fileType: "aiff")
        DispatchQueue.main.asyncAfter(deadline: .now()) { [self] in
            optionOneText.backgroundColor = UIColor.black
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            optionOneText.backgroundColor = UIColor.darkGray
        }
        }
   
    @IBAction func optionTwoTapped(_ sender: UIButton) {
        soundEffect(soundName: "tapped", fileType: "aiff")
        DispatchQueue.main.asyncAfter(deadline: .now()) { [self] in
            optionTwoText.backgroundColor = UIColor.black
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            optionTwoText.backgroundColor = UIColor.darkGray
        }
        }
   
    @IBAction func optionThreeTapped(_ sender: UIButton) {
        soundEffect(soundName: "tapped", fileType: "aiff")
        DispatchQueue.main.asyncAfter(deadline: .now()) { [self] in
           optionThreeText.backgroundColor = UIColor.black
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            optionThreeText.backgroundColor = UIColor.darkGray
        }
        }
    
    @IBAction func bagTapped(_ sender: UIButton) {
        soundEffect(soundName: "tapped", fileType: "aiff")
        }
    
    
    
    
    
    @IBAction func homeScreenTapped(_ sender: UIButton) {
        soundEffect(soundName: "tapped", fileType: "aiff")
        performSegue(withIdentifier: "goBack", sender: self)
        }
    
//-------------------------------------------------------------------------------FUNC
    
    func chanceCalculator(attackChance: Int) -> Bool {
        var attack = false
        var thisNum = 0
        let rightNum = 4
        for _ in 1...attackChance {
            thisNum += Int.random(in: 1...20)
        }
        if thisNum == rightNum {
            attack = true
        } else {
            attack = false
        }
        return attack
        }
    
        }
