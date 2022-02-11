//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Vanichjakvong, Jakpat (IRG) on 24/01/2022.
//

import Foundation

class Student: Codable {
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
    static let examples = [Student(forename: "Orca", surname: "Vanichjakvong", birthday: Date(timeIntervalSince1970: 11221864800)),
                           Student(forename: "Sean", surname: "Okuyama-Smith", birthday: Date(timeIntervalSince1970: 11004559200)),
                           Student(forename: "Peter", surname: "Compton-Burnett", birthday: Date(timeIntervalSince1970: 11221864800)),
                           Student(forename: "James", surname: "Tcheng", birthday: Date(timeIntervalSince1970: 11004559200)),
                           Student(forename: "Ethan", surname: "Scott-Hin", birthday: Date(timeIntervalSince1970: 11004559200)),
                           Student(forename: "Barnaby", surname: "Wreford", birthday: Date(timeIntervalSince1970: 11004559200)),
                           Student(forename: "William", surname: "Tao", birthday: Date(timeIntervalSince1970: 11221864800)),
                           Student(forename: "Ahmed", surname: "Diab", birthday: Date(timeIntervalSince1970: 11004559200)),
                           Student(forename: "Nick", surname: "Stoian", birthday: Date(timeIntervalSince1970: 11004559200)),
                           Student(forename: "Aman", surname: "Gogna", birthday: Date(timeIntervalSince1970: 11004559200))]
    #endif
}
