//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by Smith, Oli (AMM) on 27/02/2024.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            DivisionsView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Absences")
                }
            StatisticsView()
                .tabItem {
                    Image(systemName: "chart.pie")
                    Text("Statistics")
                }
        }
    }
}

struct RootTAbView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
