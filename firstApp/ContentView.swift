//
//  ContentView.swift
//  firstApp
//
//  Created by Emmanuel Justin Atienza on 9/21/23.
//

import SwiftUI

var userInfo1: UserInfoModel = UserInfoModel(
    company: "Peddlr Philippines Inc.",
    jobDesc: "Responsible for maintaining and development of new features in Peddlr App",
    tenurity: "February 21, 2022 - Present",
    skills: ["Flutter & Dart", "Clean Architecture", "Flutter Bloc", "Basic SwiftUI & IOS App Development", "API handling& Modeling"]
)

var userInfo2: UserInfoModel = UserInfoModel(
    company: "Leentech Flutter Intern",
    jobDesc: "Created a attendance app using fingerprint and manual verification method",
    tenurity: "July 2021 - August 2021 (1 Month)",
    skills: ["Flutter & Dart", "Flutter Firebase"]
)

var experienceInfo: Array<UserInfoModel> = [userInfo1, userInfo2]

struct ContentView: View {
    
    // State that handles the page behavior of the UI
    @State private var pageIndex = 0;
    private let dotAppearance = UIPageControl.appearance()
    
    // Function module call
    var _funcModule: FunctionCalls = FunctionCalls()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading) {
                    Image("grad")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    
                    Text("Emmanuel Atienza")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Software Engineer - Flutter")
                        .font(.headline)
                        .fontWeight(.bold)
                }
                .padding()
                .background(Rectangle().foregroundColor(.white)
                    .cornerRadius(15)
                    .shadow(radius: 15))
                .padding()
        
                // Dynamic content using the data fetched from the class model
                ExperienceSection(experienceInfo: experienceInfo)
                // Static data with basic views
                Educations()
                Button(action: {
                    pageIndex = _funcModule.incrementSample(value: pageIndex)
                    print(pageIndex)
                }, label: {
                    Text("Number Incremented: \(pageIndex)")
                        .frame(width: 200)
                })
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
