//
//  ExperienceSection.swift
//  firstApp
//
//  Created by Emmanuel Justin Atienza on 1/3/24.
//

import SwiftUI

private var bulletIcon: String = "person.badge.shield.checkmark"

struct ExperienceSection: View {
    var experienceInfo: Array<UserInfoModel>
    var body: some View {
        
            VStack {
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.orange)
                            .font(.title)
                        Text("Experience")
                            .font(.title)
                            .fontWeight(.bold)
                    }.frame(height: 50)
                    
                    ForEach(experienceInfo, id: \.id) { info in
                        HStack {
                            Image(systemName: "folder.fill")
                                .foregroundColor(Color.green)
                                .font(.callout)
                            
                            Text(info.company)
                                .font(.callout)
                                .fontWeight(.bold)
                        }
                        
                        Text(info.tenurity)
                            .font(.callout)
                            .italic()
                        
                        Text(info.jobDesc)
                            .font(.callout)
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(height: 40)
                        
                        VStack(alignment: .leading) {
                            
                            let skillList = info.skills
                            ForEach(skillList, id: \.self) { skill in
                                HStack {
                                    Image(systemName: bulletIcon)
                                        .font(.caption)
                                    
                                    Text(skill)
                                        .font(.callout)
                                }
                            }
                        }
                    }
                }.padding()
            Divider()
        }
    }
}

#Preview {
    ExperienceSection(experienceInfo: .init())
}
