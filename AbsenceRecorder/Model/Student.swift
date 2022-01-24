//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Vanichjakvong, Jakpat (IRG) on 24/01/2022.
//

import Foundation

class Student {
    let formatter = DateFormatter()
    
    let forename: String
    let surname: String
    let birthday: Date
    
    init(forename: String, surname: String, birthday: Date) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
    
    #if DEBUG
    static func createStudent(forename: String, surname: String, birthday: Date) -> Student {
        let student = Student(forename: forename, surname: surname, birthday: birthday)
        return student
    }
    static let examples = [Student.createStudent(forename: "Orca", surname: "Vanichjakvong", birthday: Date(timeIntervalSince1970: 11221864800)),
                           Student.createStudent(forename: "Sean", surname: "Okuyama-Smith", birthday: Date(timeIntervalSince1970: 11004559200)),
                           Student.createStudent(forename: "Peter", surname: "Compton-Burnett", birthday: Date(timeIntervalSince1970: 11221864800)),
                           Student.createStudent(forename: "James", surname: "Tcheng", birthday: Date(timeIntervalSince1970: 11004559200)),
                           Student.createStudent(forename: "Ethan", surname: "Scott-Hin", birthday: Date(timeIntervalSince1970: 11004559200)),
                           Student.createStudent(forename: "Barnaby", surname: "Wreford", birthday: Date(timeIntervalSince1970: 11004559200)),
                           Student.createStudent(forename: "William", surname: "Tao", birthday: Date(timeIntervalSince1970: 11221864800)),
                           Student.createStudent(forename: "Ahmed", surname: "Diab", birthday: Date(timeIntervalSince1970: 11004559200)),
                           Student.createStudent(forename: "Nick", surname: "Stoian", birthday: Date(timeIntervalSince1970: 11004559200)),
                           Student.createStudent(forename: "Aman", surname: "Gogna", birthday: Date(timeIntervalSince1970: 11004559200))]
    #endif
}
