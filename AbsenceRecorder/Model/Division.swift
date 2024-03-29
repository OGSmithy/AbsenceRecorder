//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Smith, Oli (AMM) on 22/02/2024.
//

import Foundation

class Division: Codable {
    let code: String
    var students: [Student] = []
    var absences: [Absence] = []
    
    init(code: String) {
        self.code = code
    }
    
    func getAbsence(for date: Date) -> Absence?  {
        return absences.first {
            let comparison = Calendar.current.compare($0.takenOn, to: date, toGranularity: .day)
            return comparison == .orderedSame
        }
    }
    
    func createAbsenceOrGetExistingIfAvailable(for date: Date) -> Absence {
        if let existingAbsence = getAbsence(for: date) {
            return existingAbsence
        } else {
            let absence = Absence(date: date, students: students)
            absences.append(absence)
            
            return absence
        }
            
    }
    
    #if DEBUG
    
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for i in 1...size {
            let student = Student(forename: "Firstname\(i)", surname: "Surname\(i)", birthday: Date())
            division.students.append(student)
        }
        
        return division
    }
    
    static let examples = [Division.createDivision(code: "vCY-1", of: 8),
                           Division.createDivision(code: "vBX-2", of: 6),
                           Division.createDivision(code: "vE2-3", of: 15),
                           Division.createDivision(code: "vD1-1", of: 14)]
    
    #endif
}
