//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Vanichjakvong, Jakpat (IRG) on 24/01/2022.
//

import Foundation

class Division: Codable {
    let code: String
    var students: [Student] = []
    var absences: [Absence] = []
    
    init(code: String) {
        self.code = code
    }
    
    func getAbsence(for date: Date) -> Absence? {
        return absences.first {
            let comparison = Calendar.current.compare($0.takenOn, to: date, toGranularity: .day)
            return comparison == .orderedSame
        }
    }
    
    func createAbsenceOrGetExistingIfAvailable(for date: Date) -> Absence {
        
        //if absence exists for the given date, return that date
        for absence in absences {
            if absence.takenOn == date {
                return absence
            }
        }
            
        //otherwise, create new absence with date passed in, using current students
        let newAbsence = Absence(date: date, students: students)
        
        //add to absences array
        absences.append(newAbsence)
            
        //return absence
        return newAbsence
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for i in 0...size {
            let student = Student(forename: "Firstname\(i)", surname: "Surname\(i)", birthday: Date())
            division.students.append(student)
        }
        
        return division
    }
    static let examples = [Division.createDivision(code: "CCom-1", of: 10),
                           Division.createDivision(code: "CMdp-1", of: 10),
                           Division.createDivision(code: "CMda-1", of: 10),
                           Division.createDivision(code: "CPhy-1", of: 10)]
    #endif

}
