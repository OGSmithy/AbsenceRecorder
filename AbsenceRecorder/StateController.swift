//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Smith, Oli (AMM) on 27/02/2024.
//

import SwiftUI

class StateController: ObservableObject {
    @Published var divisions: [Division] = []
    
    init() {
        //divisions = Division.examples
        loadFromFile()
        
    }
    
    func loadFromFile() {

        if let loaded: [Division] = FileManager.default.load(from: "divisons.json") {
                divisions = loaded
                
        }
    }
    
    func saveToFile() {
        
        FileManager.default.save(to: "divisons.json", object: divisions)
    }
}
