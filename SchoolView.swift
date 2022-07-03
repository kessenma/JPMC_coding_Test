//
//  SchoolView.swift
//  NYCSchools
//
//  Created by Kyle Essenmacher on 7/3/22.
//

import SwiftUI

struct SchoolView: View {
    var schools = loadCSV(from: "schools")
    var body: some View {
        List(schools) { school in
            Text(school.school_name)
        }
    }
}

struct SchoolView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolView()
    }
}
