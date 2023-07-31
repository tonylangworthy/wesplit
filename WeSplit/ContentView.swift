//
//  ContentView.swift
//  WeSplit
//
//  Created by Tony Langworthy on 7/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    let students = ["Tony", "Brandy", "Madison", "Brayden"]
    @State private var selectedStudent = "Tony"

    
    var body: some View {
        
        NavigationStack {
            Form {
                var sortedMadisonFirst = students.sorted(by: studentFirstSorted)
                var sortedStudents = students.sorted()
                
                Picker("Select Student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
                Section {
                    ForEach(sortedStudents, id: \.self) {
                        Text($0)
                    }
                }
                
            }

        }.navigationTitle("SwiftUI")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func studentFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Madison" {
        return true
    } else if name2 == "Madison" {
        return false
    }

    return name1 < name2
}
