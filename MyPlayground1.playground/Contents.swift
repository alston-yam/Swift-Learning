import Cocoa

func printTimesTable(_ number: Int) {
    for i in 1...12 {
        print("\(i) * \(number) is \(i * number).")
    }
}

printTimesTable(8)

