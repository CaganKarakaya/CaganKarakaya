import SwiftUI

struct ContentView: View {
    
    @State private var n1 = ""
    @State private var n2 = ""
    
    @State private var result = 0
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Calculator")
                .font(.largeTitle)
                .bold()
            
            TextField("Enter first number", text: $n1)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .padding(.horizontal)
            
            TextField("Enter second number", text: $n2)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .padding(.horizontal)
            
            HStack(spacing: 15) {
                
                Button("+") {
                    if let a = Int(n1), let b = Int(n2) {
                        result = a + b
                    }
                }
                
                Button("−") {
                    if let a = Int(n1), let b = Int(n2) {
                        result = a - b
                    }
                }
                
                Button("×") {
                    if let a = Int(n1), let b = Int(n2) {
                        result = a * b
                    }
                }
                
                Button("÷") {
                    if let a = Int(n1), let b = Int(n2), b != 0 {
                        result = a / b  
                    }
                }
            }
            .buttonStyle(.borderedProminent) 
            Text("Result: \(result)")
                .font(.title2)
                .foregroundColor(.blue)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
