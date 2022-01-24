//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Vanichjakvong, Jakpat (IRG) on 24/01/2022.
//

import Foundation

class Division {
    let code: String
    var students: [Student] = []
    
    init(code: String) {
        self.code = code
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for i in 0...10 {
            division.students.append(Student.examples[i])
        }
        
        return division
    }
    static let examples = [Division.createDivision(code: "CCom-1", of: 10),
                           Division.createDivision(code: "CMdp-1", of: 10),
                           Division.createDivision(code: "CMda-1", of: 10),
                           Division.createDivision(code: "CPhy-1", of: 10)]
    #endif

}
