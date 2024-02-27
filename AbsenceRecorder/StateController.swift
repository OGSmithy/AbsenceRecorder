//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Smith, Oli (AMM) on 27/02/2024.
//

import SwiftUI

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}
