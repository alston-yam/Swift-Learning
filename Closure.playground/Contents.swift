import Cocoa

func greetUser() {
    print("Hello World!")
}

greetUser()
var greetCopy = greetUser
greetCopy()

// The "in" keyword marks the end of the parameter declarations
let greet = { (name: String) -> String in
    "Hi \(name)!"
}

print(greet("Bob"))

let team = ["A", "B", "D", "C", "Z", "J"]
func firstCaptainName(name1: String, name2: String) -> Bool {
    if name1 == "D" {
        return true
    } else if name2 == "D" {
        return false
    }
    
    return name1 < name2
}

let captainFirstTeam = team.sorted(by: firstCaptainName)
print(captainFirstTeam)
