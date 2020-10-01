//
//  ContentView.swift
//  Memorize
//
//  Created by Ikram Gabiyev on 10/2/20.
//

// this imports SwiftUI package
// if you import SwiftUI, Foundation package is imported automatically
import SwiftUI

// Some notes:
// structs are much more powerful than in C/C++
// they can contain data, functions, and behaviors
// the name of this struct is ContentView
// and it behaves/functions like a View (not superclass/inheritance)
struct ContentView: View {
    // must have a body prop returning stuff that behaves like a view
    // curly braces make this behave like a macro - not placed in memory
    // some View basically will infer it is ZStack type
    var body: some View {
        // stacks horizontally alongside, not on top of each other
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: false)
            }
        }
        // ... inncludes upper bound (like python range)
            .padding() //just puts padding around ZStack (no padding added to each component)
            .foregroundColor(Color.orange) // passed down to each component
            .font(Font.largeTitle) // for all texts in ZStack
        
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        //stacks on top of each other
        ZStack {
            if isFaceUp {
                // behaves like a View and Shape
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 3)
                Text("👻")
            }
            else {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill()
            }
        }
    }
}





/**
 * This glues my code to the app
 */
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
