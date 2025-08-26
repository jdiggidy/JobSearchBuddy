//
//  SwiftUIView.swift
//  JobSearchBuddy
//
//  Created by Jeremy Barger on 8/25/25.
//

import SwiftUI

struct InfoView: View {
    @State private var skillsText: String = ""
    var body: some View {
        VStack {
            Text("Hey, buddy! Lookin' for a new job?").frame(width: 350, height: 36, alignment: .center).font(.system(size: 20, weight: .medium, design: .rounded))
            TextField("Tell me what you're looking for, what you're good at,  and what you've done before and I'll help you find a job!", text: $skillsText, axis: .vertical).lineLimit(4, reservesSpace: true).font(.system(size: 16, weight: .medium)).textFieldStyle(JobSearchButtonTextViewStyle())
        
        }
    }
}

#Preview {
    InfoView()
}
