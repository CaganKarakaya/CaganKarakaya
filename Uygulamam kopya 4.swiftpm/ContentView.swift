import SwiftUI

struct ContentView: View {
    
    let cities = [
        ("🇬🇧", "London", "10:24"),
        ("🇯🇵", "Tokyo", "18:24"),
        ("🇺🇸", "New York", "05:24"),
        ("🇹🇷", "Istanbul", "12:24"),
        ("🇫🇷", "Paris", "11:24"),
        ("🇩🇪", "Berlin", "11:24")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            Text("World Clock")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            
            ForEach(cities, id: \.1) { city in
                HStack {
                    Text(city.0)          
                    Text(city.1)          
                    Spacer()
                    Text(city.2)          
                }
            }
            
            Spacer()
        }
        .padding()
    }
}
