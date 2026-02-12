import SwiftUI
struct ContentView: View {
    
    let gameLogic = RPSLogic()
    @State private var gameOver = false
    @State private var playerScore = 0
    @State private var computerScore = 0
    @State private var computerChoice = ""
    @State private var result = "Choose your move"
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Rock Paper Scissors Game")
            Text("Score")
                .font(.headline)
            Text("You: \(playerScore) Computer: \(computerScore)")
            
            Text(result)
            HStack 
            {ForEach(gameLogic.choices, id: \.self) { choice in
                Button
                {play(choice)
                } label: {
                    Text(choice).font(.largeTitle)
                }
            }
            }
            
            Text("Computer chose: \(computerChoice)")
        }
    }
    
    func play(_ userChoice: String) {
        
        if gameOver { return }
        
        computerChoice = gameLogic.randomComputerChoice()
        
        let gameResult = gameLogic.determineWinner(
            userChoice: userChoice,
            computerChoice: computerChoice
        )
        
        result = gameResult
        
        if gameResult == "You win!" {
            playerScore += 1
        } else if gameResult == "You lose!" {
            computerScore += 1
        }
        
        if playerScore == 3 {
            result = " You won the game!"
            gameOver = true
        } else if computerScore == 3 {
            result = "Computer won the game!"
            gameOver = true
        }
    }
}

    
