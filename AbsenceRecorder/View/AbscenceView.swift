//
//  AbscenceView.swift
//  AbsenceRecorder
//
//  Created by Vanichjakvong, Jakpat (IRG) on 01/02/2022.
//

import SwiftUI

struct AbscenceView: View {
    let division: Division
    
    var body: some View {
        Text(division.code)
    }
}

struct AbscenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbscenceView(division: Division.examples[0])
    }
}
