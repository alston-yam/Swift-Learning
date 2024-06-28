import Cocoa

enum errors: Error {
    case bound, noroot
}

func getSqrt(num: Int) throws -> Int {
    if num > 10000 || num < 1 {
        throw errors.bound
    }
    for i in 1...100 {
        if i * i == num {
            return i
        }
    }
    
    throw errors.noroot
}

do {
    let result = try getSqrt(num: 64)
    print(result)
} catch errors.bound {
    print("Out of Bounds")
} catch errors.noroot {
    print("There's no root")
}
