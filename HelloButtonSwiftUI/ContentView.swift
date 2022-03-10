//
//  ContentView.swift
//  HelloButtonSwiftUI
//
//  Created by David Fisher on 3/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var count = 0
    
    var body: some View {
        VStack(spacing: 200) {
            
            HStack {
                Button {
                    self.count -= 1
                    print("Decrement button \(self.count)")
                } label: {
                    Text("Decrement").frame(maxWidth: .infinity)
                }
                Button {
                    self.count = 0
                    print("Reset button \(self.count)")
                } label: {
                    Text("Reset")
                }
                Button {
                    self.count += 1
                    print("Increment button \(self.count)")
                } label: {
                    Text("Increment").frame(maxWidth: .infinity)
                }
            }
            Text("Count = \(self.count)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
