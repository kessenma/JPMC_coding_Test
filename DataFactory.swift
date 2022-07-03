//
//  DataFactory.swift
//  NYCSchools
//
//  Created by Kyle Essenmacher on 7/3/22.
//

import Foundation

struct School: Identifiable {
    var school_name: String = ""
    var overview_paragraph: String = ""
    var language_classes: String = ""
    var neighborhood: String = ""
    var location: String = ""
    var phone_number: String = ""
    var website: String = ""
    var total_students: String = ""
    var Borough: String = ""
    var id = UUID()
    
    init(raw: [String]) {
        school_name = raw[0]
        overview_paragraph = raw[1]
        language_classes = raw[2]
        neighborhood = raw[3]
        location = raw[4]
        phone_number = raw[5]
        website = raw[6]
        total_students = raw[7]
        Borough = raw[8]
    }
}

func loadCSV(from csvName: String) -> [School] {
    var csvToStruct = [School]()
    
    // locate the CSV file
    guard let filePath = Bundle.main.path(forResource: csvName, ofType: "csv") else {
        return[]
    }
    
    // convert the contents of the file into one very long string
    var data = ""
    do {
        data = try String(contentsOfFile: filePath)
    } catch {
        print(error)
        return []
    }
    
    //split the long string into an array of "rows" of data. Each row is a string
    // detect "/n" caariage return, then split
    var rows = data.components(separatedBy: "\n")
    
    //remove header rows
    //count the number of header columns before removing
    let columnCount = rows.first?.components(separatedBy: ",").count
    rows.removeFirst()
    
    //now loop around each row and split into columns
    for row in rows {
        let csvColumns = row.components(separatedBy: ",")
        if csvColumns.count == columnCount {
            let schoolStruct = School.init(raw: csvColumns)
            csvToStruct.append(schoolStruct)
        }
    }
    
    return csvToStruct
}
