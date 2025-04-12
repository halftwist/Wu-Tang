//
//  ContentView.swift
//  Wu-Tang
//
//  Created by John Kearon on 4/11/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var enteredName = ""
    @State private var staticCoderNameIs = ""
    @State private var wuTangName = "Undefined Breakpoint"
    @FocusState private var isFocused: Bool
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
//                .focused(FocusState<Bool>.Binding)
                .padding()
                .focused($isFocused)
            
            Spacer()
            
            Text("Generate Code")
                .font(.title2)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity, alignment: .init(horizontal: .center, vertical: .center))
            
            Spacer()
            
            Button {
                //TODO: <#code#>
//                wuTangName = getWuTangName(enteredName: enteredName)
                wuTangName = getWuTangName2(name: enteredName)
                isFocused = false
                staticCoderNameIs = "Your Wu-Tang Coder Name is:"
            } label: {
                Image("wu-tang-button")
                Text("Get It!")
            }
            .font(.title2)
            .fontWeight(.bold)
            .foregroundStyle(.yellow)
            .buttonStyle(.borderedProminent)
            .tint(.black)
            .disabled(enteredName.isEmpty)
            
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
    
    func getWuTangName2(name: String) -> String {
        var localName = name
        let firstLetter = localName.removeFirst()
        print ("first letter is \(firstLetter)")
        var firstColumnIndex = 0
        // loop through all elements of firstColumn & compare first letter
        for i in 0..<firstColumn.count {
            if firstColumn[i].first == firstLetter {
                firstColumnIndex = i == 0 ? 25 : i - 1
            }
        }
        return "\(firstColumn[firstColumnIndex]) \(secondColumn.randomElement()!)"
    }
    
    
    func getWuTangName(enteredName: String) -> String {   // Johns Version
        var firstLetterOfName = self.enteredName.removeFirst()
        var indexOfPreviousLetter = 0
        var wuTangName: String = ""
        
        for letter in firstColumn {
            
            if firstLetterOfName == letter.first
            {
                //                print("match on \(indexOfPreviousLetter) \(firstLetterOfName) and \(letter) ")
                if indexOfPreviousLetter == 0 {
                    indexOfPreviousLetter = firstColumn.count - 1
                    wuTangName = String(firstColumn[indexOfPreviousLetter])
                } else {
                    indexOfPreviousLetter -= 1
                    wuTangName = String(firstColumn[indexOfPreviousLetter])
                }
            }
            //            print("\(String(describing: firstLetterOfName)) \(letter)")
            indexOfPreviousLetter += 1
            
        }
        
        var secondIndex = Int.random(in: 0..<secondColumn.count - 1)
        var secondName = secondColumn[secondIndex]
        
        return String(wuTangName + " " + secondName)
        
    }
    
}

#Preview {
    ContentView()
}
