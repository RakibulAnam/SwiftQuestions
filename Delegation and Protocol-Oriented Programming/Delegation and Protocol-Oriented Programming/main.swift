protocol ButtonDelegate{
    func ButtonTapped()
}

class Button{
    var btnDelegate : ButtonDelegate?
    
    func btnTapped(){
        btnDelegate?.ButtonTapped()
    }
    
}

class ViewController : ButtonDelegate{
   
    init(button : Button) {
        button.btnDelegate = self
    }
    
    func ButtonTapped() {
        print("Button in View Controller is Pressed")
    }
    
}


var btnMust = Button()

var someButton = ViewController(button: btnMust)

someButton.ButtonTapped()
