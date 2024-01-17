//
//  Educations.swift
//  firstApp
//
//  Created by Emmanuel Justin Atienza on 1/3/24.
//

import SwiftUI

private var bulletIcon: String = "doc.text.fill"

struct Educations: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.orange)
                        .font(.title)
                    Text("Educational Background")
                        .font(.title)
                        .fontWeight(.bold)
                }.frame(height: 50)
                
                HStack {
                    Image(systemName: "graduationcap.fill")
                        .foregroundColor(Color.green)
                        .font(.callout)
                    
                    Text("Cavite State University Main Campus")
                        .font(.callout)
                        .fontWeight(.bold)
                }
                
                Text("2016 - 2022 (Graduate with BS Degree)")
                    .font(.callout)
                    .italic()
                
                Text("Studied Bachelor of Science in Information Technology")
                    .font(.callout)
                    .fixedSize(horizontal: false, vertical: true)
                    .frame(height: 40)
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: bulletIcon)
                            .font(.caption)
                        
                        Text("Basic java system application")
                            .font(.callout)
                    }
                    
                    HStack {
                        Image(systemName: bulletIcon)
                            .font(.caption)
                        
                        Text("Basic Web Development ")
                            .font(.callout)
                    }
                    
                    HStack {
                        Image(systemName: bulletIcon)
                            .font(.caption)
                        
                        Text("Basic Graphic Design")
                            .font(.callout)
                    }
                }
            }.padding()
            Divider()
        }
    }
}

#Preview {
    Educations()
}
