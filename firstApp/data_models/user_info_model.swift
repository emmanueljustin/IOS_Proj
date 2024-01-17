//
//  File.swift
//  firstApp
//
//  Created by Emmanuel Justin Atienza on 1/4/24.
//

import Foundation

// Used struct instead of class to avoid large boilerplate
struct UserInfoModel: Equatable {
    var id = UUID()
    var company: String
    var jobDesc: String
    var tenurity: String
    var skills: Array<String>
}

// !NOTICE this is the class counterpart for the struct uncomment this to use it uses a member wise initializer
//class UserInfoModel: Equatable {
//    internal init(id: UUID = UUID(), company: String, jobDesc: String, tenurity: String, skills: Array<String>) {
//        self.id = id
//        self.company = company
//        self.jobDesc = jobDesc
//        self.tenurity = tenurity
//        self.skills = skills
//    }
//    
//    var id = UUID()
//    var company: String
//    var jobDesc: String
//    var tenurity: String
//    var skills: Array<String>
//    
//    static func == (lhs: UserInfoModel, rhs: UserInfoModel) -> Bool {
//        return lhs.id == rhs.id &&
//        lhs.company == rhs.company &&
//        lhs.jobDesc == rhs.jobDesc &&
//        lhs.tenurity == rhs.tenurity &&
//        lhs.skills == rhs.skills
//    }
//}
