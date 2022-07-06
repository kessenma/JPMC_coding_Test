//
//  DataFactory.swift
//  NYCSchools
//
//  Created by Kyle Essenmacher on 7/3/22.
//

import Foundation

protocol CSVLoadable {
    init?(raw: [String])
}

struct School: Identifiable, CSVLoadable{
    var county_ID: String = ""
    var school_ID: String = ""
    var school_name: String = ""
    var overview_paragraph: String = ""
    var language_classes: String = ""
    var neighborhood: String = ""
    var location: String = ""
    var phone_number: String = ""
    var website: String = ""
    var total_students: String = ""
    var borough: String = ""
    var id = UUID()
    
    init(raw: [String]) {
        county_ID = raw[0]
        school_ID = raw[1]
        school_name = raw[2]
        overview_paragraph = raw[3]
        neighborhood = raw[4]
        location = raw[5]
        website = raw[6]
        total_students = raw[7]
        borough = raw[8]
    }
}

extension CSVLoadable {
    static func loadCSV(from csvName: String) -> [Self] {
        var csvToStruct = [Self]()
        
        //locate the csv file
        guard let filePath = Bundle.main.path(forResource: csvName, ofType: "csv") else {
            return []
        }
        
        //convert the contents of the file into one very long string
        var data = ""
        do {
            data = try String(contentsOfFile: filePath)
        } catch {
            print(error)
            return []
        }
        
        //split the long string into an array of "rows" of data. Each row is a string
        //detect "/n" carriage return, then split
        var rows = data.components(separatedBy: "\n")
        
        //remove header rows
        //count the number of header columns before removing
        let columnCount = rows.first?.components(separatedBy: ",").count
        rows.removeFirst()

        //now loop around each row and split into columns
        for row in rows {
            let csvColumns = row.components(separatedBy: ",")
            if csvColumns.count == columnCount {
                let genericStruct = Self.init(raw: csvColumns)
                csvToStruct.append(genericStruct!)
            }
        }
        
        return csvToStruct
    }
}
