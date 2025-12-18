import SwiftUI

struct ContentView: View {
    let moodList = [
        "😊 Happy",
        "😡 Angry",
        "🤩 Excited",
        "😢 Sad"
    ]
    let colorList = [
        Color.red,
        Color.blue,
        Color.green
    ]    
    var body: some View {
        VStack {
            Text("Color List")
                .font(.title)
            
            ForEach(colorList, id: \.self) { (color: Color) in
                color
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }           }
        
        VStack {
            Text("Mood List")
                .font(.title)
            
            ForEach(moodList, id: \.self) { mood in
                Text(mood)
            }
        }
        .padding()
    }
}
