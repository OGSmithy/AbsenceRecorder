//
//  Absence.swift
//  AbsenceRecorder
//
//  Created by Smith, Oli (AMM) on 29/02/2024.
//

import Foundation

class Absence {
    let takenOn: Date
    var studentAbsences: [StudentAbsence]
    
    init(date: Date, students: [Student]) {
        takenOn = date
        studentAbsences = students.map { StudentAbsence(student: $0) }
    }
    
    #if DEBUG
    
    static let example = Absence(date: Date(), students: Student.examples)
    
    #endif
}