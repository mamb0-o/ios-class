enum AppleDevice {
    case iPhoneXs
    case iPhoneXR
    case iPhone8
    case iPhone7
    
    var price: Int {
        switch self {
        case .iPhoneXs:
            return 1000
        case .iPhoneXR:
            return 1100
        case .iPhone8:
            return 800
        case .iPhone7:
            return 750
        }
    }
}
//testing
let iPhoneXsPrice = AppleDevice.iPhoneXs.price
print("Iphone XS price is: \(iPhoneXsPrice)")
let iPhoneXRPrice = AppleDevice.iPhoneXR.price
print("Iphone XR price is: \(iPhoneXRPrice)")
let iPhone8Price = AppleDevice.iPhone8.price
print("Iphone 8 price is: \(iPhone8Price)")
let iPhone7Price = AppleDevice.iPhone7.price
print("Iphone 7 price is: \(iPhone7Price)")
