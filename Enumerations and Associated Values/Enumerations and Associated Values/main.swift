


enum Result{
    
    case success
    case failure(errorMessage: String)
}

func checkResult(marks : Int) -> Result{
    
    if marks > 50{
        return .success
    }else{
        return .failure(errorMessage: "You Failed")
    }
}

var getMessage = checkResult(marks: 25)


switch getMessage {
    
case .success:
    print("Hoorray")
case .failure(let message):
    print(message)
    
}


