//
//  PersistData.swift
//  Thylispi
//
//  Created by Cyrus Butcher on 4/28/23.
//

import Foundation
import AVFoundation


var playerOne = AVAudioPlayer()
var playerTwo = AVAudioPlayer()
var backgroundMusic = true
var gameSoundVar = true

var currentTimer = 0

//-----------------------------------------------------------------------------------------------CHARA

var selectableGenders = ["Male","Female","Other"]
var name = ""
var gender = ""



//------------------------------------------------------------------------------------------------CLASSES


class characterBuild {
    var gender: String
    var name: String
    var health: Int
    var sanity: Int
    init(gender: String, name: String, health: Int, sanity: Int) {
        self.gender = gender
        self.name = name
        self.health = health
        self.sanity = sanity
        }
        }

//var defaultChara = characterBuild(gender: "Other", name: "Oliver", health: 10, sanity: 25)

class monsterGeneration {
    var species: String //image name
    var name: String
    var passive: Bool
    var attackChance: Int
    var attackDamage: Int
    var defense: Int
    var weakness: String
    var itemHad: String
    init(species: String, name: String, passive: Bool, attackChance: Int, attackDamage: Int, defense: Int, weakness: String, itemHad: String) {
        self.species = species
        self.name = name
        self.passive = passive
        self.attackChance = attackChance
        self.attackDamage = attackDamage
        self.defense = defense
        self.weakness = weakness
        self.itemHad = itemHad
        }
        }

//var HyenaOne = monsterGeneration(species: "CursedHyena", name: "Pickles", passive: true, attackChance: 0, attackDamage: 1, defense: 10, weakness: "Politics", itemHad: "notebook")

class bagContents {
    var rustedKey: Bool // used to unlock item chests
    var moldedBread: Bool //Gives health: can be offered
    var rat: Bool //helps sanity: if offered it will be eaten making you lose sanity
    var cross: Bool //will confused or enrage monster
    var smallTeddy: Bool //helps sanity: can be offered to monsters
    var notebook: Bool //Guide
    init(rustedKey: Bool, moldedBread: Bool, rat: Bool, cross: Bool, smallTeddy: Bool, notebook: Bool) {
        self.rustedKey = rustedKey
        self.moldedBread = moldedBread
        self.rat = rat
        self.cross = cross
        self.smallTeddy = smallTeddy
        self.notebook = notebook
        }
        }


//-------------------------------------------------------------------------------------------------SOUND



func backgroundSound(soundName: String, fileType: String) {
    if backgroundMusic.self == true {
        let path = Bundle.main.path(forResource: "\(soundName)", ofType: "\(fileType)")!
        let url = URL(fileURLWithPath: path)
        do {
            playerOne = try AVAudioPlayer (contentsOf: url)
            playerOne.play()
        } catch {
            print("There is an issue with the audio")
        }} else {
            print("No sound")
        }
        }
    
    
    
    
    func soundEffect(soundName: String, fileType: String) {
        if gameSoundVar.self == true {
            let path = Bundle.main.path(forResource: "\(soundName)", ofType: "\(fileType)")!
            let url = URL(fileURLWithPath: path)
            do {
                playerTwo = try AVAudioPlayer (contentsOf: url)
                playerTwo.play()
            } catch {
                print("There is an issue with the audio")
            }} else {
                print("No sound")
            }
            }
    
