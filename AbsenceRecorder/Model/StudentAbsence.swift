//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Vanichjakvong, Jakpat (IRG) on 03/02/2022.
//

import Foundation

class StudentAbsence: ObservableObject {
    let student: Student
    @Published var isAbsent: Bool = false
    
    init(student: Student) {
        self.student = student
        isAbsent = false
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student.examples[0])
    #endif
}
