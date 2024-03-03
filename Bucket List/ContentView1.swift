//
//  ContentView.swift
//  Bucket List
//
//  Created by Sothesom on 12/12/1402.
//

import SwiftUI

struct User: Identifiable, Comparable{ //Comparable : قابل مقایسه
    let id = UUID()
    let firstName : String
    let lastName : String
    
    
    // why static? جون بطور مستقیم به ساختار کاربر تعلق دارد نه یک نمونه واحد از آن
    static func <(lhs: User, rhs: User) -> Bool{
        lhs.lastName < rhs.firstName
        // همون کار :
        // .sorted {
        // $0.lastName < $1.lastName }  میکنه
    }
    
    
}

struct ContentView1: View {
    
    let users = [
        User(firstName: "mohammad", lastName: "karimi"),
        User(firstName: "ali", lastName: "hashemi"),
        User(firstName: "hame", lastName: "ahmadi")
    ].sorted()
     
    var body: some View {
        List(users) { user in
            Text("\(user.firstName) \(user.lastName)")
        }
    }
}

#Preview {
    ContentView1()
}
