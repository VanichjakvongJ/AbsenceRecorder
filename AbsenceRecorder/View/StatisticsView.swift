//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by Vanichjakvong, Jakpat (IRG) on 01/02/2022.
//

import SwiftUI

struct StatisticsView: View {
    @EnvironmentObject var state: StateController
    var body: some View {
        VStack {
            Text(state.divisions[0].code)
        }
        
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
