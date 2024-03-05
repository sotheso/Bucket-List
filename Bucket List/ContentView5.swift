//
//  ContentView5.swift
//  Bucket List
//
//  Created by Sothesom on 14/12/1402.
//
// Using Touch ID and Face ID in app

import LocalAuthentication
import SwiftUI  

struct ContentView5: View {
    
    @State private var Unlocked = false
    var body: some View {
        VStack{
            if Unlocked {
                Text("baze")
            } else {
                Text("ghofle")
            }
        }
        .onAppear(perform: Ehraz)
    }
    
    func Ehraz(){
        let context = LAContext()
        var error : NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error){ // اگه ترو باشه یعنی میتونیم از سیستم بایومتریک استفاده کنیم
            let reason = "We need to unlock your"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                if success {
                    // authenticated successfully
                    Unlocked = true
                } else {
                    // there was a problem
                }
            }
        } else {
            // no biometrics 
        }
    }
}


#Preview {
    ContentView5()
}
