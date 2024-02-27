//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Smith, Oli (AMM) on 22/02/2024.
//

import SwiftUI

struct DivisionsView: View {

    @EnvironmentObject var state: StateController
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView {
            List(state.divisions, id:\.self.code) { division in
                NavigationLink(destination: AbsenceView(division: division)) {
                    DivisionItem(division: division)
                }
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { currentDate = currentDate.previousDay() }) {
                        Image(systemName: "arrow.backward")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { currentDate = currentDate.nextDay() }) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
    }
}



struct DivisionsView_Previews: PreviewProvider {
    static var previews: some View {
        DivisionsView()
            .environmentObject(StateController())
    }
}
