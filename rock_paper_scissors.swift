func getUserChoice(userInput: String) -> String{
  if userInput == "rock" || userInput == "paper" || userInput == "scissors"{
    return userInput
  }else{
    return "You can only choose between rock, paper, or scissors. Try again."
  }
}

func getComputerChoice() -> String{
  let randomNumber = Int.random(in: 0...2)
  switch randomNumber{
    case 0:
      return "rock"
    case 1:
      return "paper"
    case 2: 
      return "scissors"
    default:
      return "Ooops, something went wrong😔"
  }
}

func determineWinner(_ userChoice: String, _ computerChoice: String) -> String{
  var decision = "It's a tie."
  
  switch userChoice{
    case "rock":
      if computerChoice == "paper"{
        decision = "The computer won!"
      }else if computerChoice == "scissors"{
        decision = "The user won!"
      }
    case "paper":
      if computerChoice == "rock"{
        decision = "The user won!"
      }else if computerChoice == "scissors"{
        decision = "The computer won!"
      }
    case "scissors":
      if computerChoice == "paper"{
        decision = "The user won!"
      }else if computerChoice == "rock"{
        decision = "The computer won!"
      }
    default:
      print("Ooops, something went wrong😔")
  }
  return decision
}

let userChoice = getUserChoice(userInput: "paper")
let computerChoice = getComputerChoice()

print("You threw \(userChoice)")
print("The computer threw \(computerChoice)")
print(determineWinner(userChoice, computerChoice))

