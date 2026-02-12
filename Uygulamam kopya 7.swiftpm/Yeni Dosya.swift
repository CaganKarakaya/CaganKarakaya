import Foundation
struct RPSLogic {
    let choices = ["🪨", "📄", "✂️"]
    func randomComputerChoice() -> String {
        choices.randomElement()!
    }
    
    func determineWinner(userChoice: String, computerChoice: String) -> String {
        
        if userChoice == computerChoice { return "It's a tie!" }
        
        if (userChoice == "🪨" && computerChoice == "✂️") ||
            (userChoice == "📄" && computerChoice == "🪨") ||
            (userChoice == "✂️" && computerChoice == "📄") {
            return "You win!"
           
        }
        
        return "You lose!"
    }
}
