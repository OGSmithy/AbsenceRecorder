//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Smith, Oli (AMM) on 22/02/2024.
//

import Foundation

class Student {
    let forename: String
    let surname: String
    let birthday: Date
    
    init(forename: String, surname: String, birthday: Date) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
}
