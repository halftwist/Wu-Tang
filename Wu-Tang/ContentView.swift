//
//  ContentView.swift
//  Wu-Tang
//
//  Created by John Kearon on 4/11/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var enteredName: String = ""
    @State private var staticCoderNameIs = "Your Wu-Tang Coder Name is:"
    @State private var wuTangName = "Undefined Breakpoint"
    private let firstColumn = ["Algorithmic",
                                      "Byte",
                                      "Cache",
                                      "Debug",
                                      "Echo",
                                      "Function",
                                      "Git",
                                      "Hex",
                                      "Infinite",
                                      "Java",
                                      "Kernel",
                                      "Logic",
                                      "Module",
                                      "Node",
                                      "Object",
                                      "Pixel",
                                      "Query",
                                      "Runtime",
                                      "Script",
                                      "Token",
                                      "Undefined",
                                      "Virtual",
                                      "Web",
                                      "Xcode",
                                      "Yota",
                                      "Zero"]
    private let secondColumn = ["$tack",
                                       "Processor",
                                       "Cipher",
                                       "Daemon",
                                       "EndPoint",
                                       "Framework",
                                       "Gateway",
                                       "Hub",
                                       "Interrupt",
                                       "Crash",
                                       "Loop",
                                       "Module",
                                       "Nexus",
                                       "Optimizer",
                                       "Protocol",
                                       "Queue",
                                       "Router",
                                       "Stack",
                                       "Thread",
                                       "Update",
                                       "Variable",
                                       "Widget",
                                       "Terminal",
                                       "Yield",
                                       "Zen",
                                       "Ace",
                                       "Breakpoint",
                                       "Root",
                                       "Instance",
                                       "Access",
                                       "Archive",
                                       "Control",
                                       "Justice"]
    
    var body: some View {
        VStack {
            Text("Wu-Tang\nCoder Name Generator")
            .font(.title)
            .foregroundStyle(.yellow)
            .fontWeight(.black)
            .multilineTextAlignment(.center)
            .frame(maxWidth: .infinity)
            .padding(.bottom)
            .padding(.horizontal)
            .background(.black)
                 
            Spacer()
            
           TextField("Enter name here", text: $enteredName)
                .font(.title2)
                .textFieldStyle(.roundedBorder)
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.gray, lineWidth: 1)
                }
                .padding()
            
            Spacer()
            
            Text("Generate Code")
                .font(.title2)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity, alignment: .init(horizontal: .center, vertical: .center))

            Spacer()
            
            Button {
               //TODO: <#code#>
            } label: {
                Image("wu-tang-button")
                 Text("Get It!")
              }
            .font(.title2)
            .fontWeight(.bold)
            .foregroundStyle(.yellow)
            .buttonStyle(.borderedProminent)
            .tint(.black)
            .background(Color.black)
            
            Spacer()
            
            VStack {
                Text(staticCoderNameIs)
                Text(wuTangName)
                     .fontWeight(.black)
            }
            .frame(height: 130)
            .font(.largeTitle)
                        
            Spacer()
                        
            Image("wu-tang")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
             Spacer()
         }
//        .background(Color.black)
//        .padding()
    }
}

#Preview {
    ContentView()
}
