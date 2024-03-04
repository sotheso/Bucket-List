//
//  ContentView2.swift
//  Bucket List
//
//  Created by Sothesom on 14/12/1402.
//
// در این برنامه به کاربر اجازه میدهیم که هر اندازه که بخواهد داده ذخیره کند
// با یک راه حل زخیره سازی بهتر از JSON


import SwiftUI

struct ContentView2: View {
    var body: some View {
        Text("Hello, World!")
            .onTapGesture {
                let str = "Javab"
                let url = getDocumentsDirectory().appendingPathComponent("message.txt")
                
                do {
                    try str.write(to: url, atomically: true, encoding: .utf8)
                    
                    let input = try String(contentsOf: url)
                    print(input)
                    
                } catch{
                    print(error.localizedDescription)
                }
            }
    }
    
    func getDocumentsDirectory() -> URL{
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}

#Preview {
    ContentView2()
}
