//
//  AbscenceView.swift
//  AbsenceRecorder
//
//  Created by Vanichjakvong, Jakpat (IRG) on 01/02/2022.
//

import SwiftUI

struct AbscenceView: View {
    let absence: Absence
    
    var body: some View {
        List(absence.studentAbsences, id: \.self.student.forename) { studentAbsence in
            AbsenceItem(studentAbsence: studentAbsence)
        }
    }
}

struct AbscenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbscenceView(absence: Absence.example)
    }
}

