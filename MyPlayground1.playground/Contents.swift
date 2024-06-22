import Cocoa

func printTimesTable(number: Int) {
    for i in 1...12 {
        print("\(i) * \(number) is \(i * number).")
    }
}

printTimesTable(number: 8)
