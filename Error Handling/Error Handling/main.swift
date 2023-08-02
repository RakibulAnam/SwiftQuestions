enum FileError : Error{
    
    case fileNotFound
    case fileCorrupted
    
}



struct Department{
    
    let supervisor : Int
    var employeeNo: Int
    let corrupt : Bool
    
    init(supervisor: Int, employeeNo: Int, corrupt : Bool) {
        self.supervisor = supervisor
        self.employeeNo = employeeNo
        self.corrupt = corrupt
    }
}

struct FileDrawer{
    
    var departmetns = [
    
        "Backend" : Department(supervisor: 1, employeeNo: 4, corrupt: false),
        "Frontend" : Department(supervisor: 1, employeeNo: 3, corrupt: true),
        "Mobile"    : Department(supervisor: 1, employeeNo: 4, corrupt: false)
    ]
    
    func getDepartmentDetails(name : String) throws{
        guard let dName = departmetns[name] else{
            throw FileError.fileNotFound
        }
        
        if (dName.corrupt){
            throw FileError.fileCorrupted
        }
        
        print("The departments name is \(name) and there are \(dName.employeeNo) emloyees in it")
    }
    
}


var fileDrawer = FileDrawer()

do{
    try fileDrawer.getDepartmentDetails(name: "Frontend")
    print("Got it")
}catch FileError.fileNotFound {
    print("No Department Like this Exists")
}catch FileError.fileCorrupted{
    print("Cant Get File, File Corrupted")
}



