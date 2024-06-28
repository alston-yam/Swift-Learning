import Cocoa

enum errors: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {throw errors.short}
    if password == "12345" {throw errors.obvious}
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Decent"
    } else {
        return "Excellent"
    }
}

let str = "12"

do {
    let result = try checkPassword(str)
    print(result)
} catch {
    print("There was an error.")
}
