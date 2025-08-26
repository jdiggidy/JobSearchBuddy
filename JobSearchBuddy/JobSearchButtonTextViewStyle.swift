//
//  JobSearchButtonTextViewStyle.swift
//  JobSearchBuddy
//
//  Created by Jeremy Barger on 8/25/25.
//

import SwiftUI

struct JobSearchButtonTextViewStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        VStack {
            configuration
//                .padding(EdgeInsets(top: 19, leading: 16, bottom: 19, trailing: 85))
            // Changed from overlay to background
                .background {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(Color(red: 194/255, green: 194/255, blue: 194/255, opacity: 0.2))
                }
                .cornerRadius(20)
                .frame(width: 373, height: 76, alignment: .center)
                .font(.system(size: 17, weight: .regular))
        }
    }
}

#Preview {
    TextField("Tell me somethings about you", text: .constant("")).textFieldStyle(JobSearchButtonTextViewStyle())
}
