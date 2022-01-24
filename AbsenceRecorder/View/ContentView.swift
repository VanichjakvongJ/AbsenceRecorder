//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Vanichjakvong, Jakpat (IRG) on 24/01/2022.
//

import SwiftUI

struct ContentView: View {
    let division = Division(code: "CCom-1")
    var body: some View {
        ForEach(0..<division.students.count, id: \.self) {i in
            Text(division.students[i].forename + " " + division.students[i].surname)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
