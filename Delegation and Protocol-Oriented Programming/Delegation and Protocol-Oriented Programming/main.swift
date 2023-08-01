protocol ButtonDelegate{
    func ButtonTapped()
}

class Button{
    var btnDelegate : ButtonDelegate?
    
    func btnTapped(){
        //Whatever the button is, the button is tapped perform action
        btnDelegate?.ButtonTapped()
    }
    
}

class ViewController : ButtonDelegate{
   
    // Knows what it is, currently it is a button
    init(button : Button) {
        button.btnDelegate = self
    }
    
    func ButtonTapped() {
        print("Button in View Controller is Pressed")
    }
    
}


var btnMust = Button()

var someButton = ViewController(button: btnMust)

// When the button is Tapped, it sees who is currently the delegate and will call the Button Tapped function of that delegate

//btnMust.btnTapped()
