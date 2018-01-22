//
//  Highscores.swift
//  MemoryGame
//
//  Created by Daniel Tsirulnikov on 17/04/16.
//  Copyright © 2016 Daniel Tsirulnikov. All rights reserved.
//

import Foundation

let kHighscoresUserDefaultsKey = "Highscores"

class Highscores {
    static let sharedInstance = Highscores()
    
    func getHighscores() -> [Dictionary<String,String>] {
        return userDefaults().array(forKey: kHighscoresUserDefaultsKey) as? [Dictionary<String,String>] ?? []
    }
    
    func saveHighscore(name: String, score: TimeInterval) {
//        let entry = ["name": name, "score": String(score)]
//
//        var scores = getHighscores()
//        scores.append(entry)
//       scores.flatMap { Int($0) }
//        let sortedScores = scores.sort { (entry1, entry2) -> Bool in
//
//            return entry1 < entry2
//        }
//
//        if scores.count > 10 {
//            scores.removeLast()
//        }
//
//        userDefaults().set(sortedScores, forKey: kHighscoresUserDefaultsKey)
    }
    
    private func userDefaults() -> UserDefaults {
        return UserDefaults.standard
    }
}
