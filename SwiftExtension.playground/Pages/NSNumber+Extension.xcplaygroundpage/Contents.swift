import Foundation
extension NSNumber {
    func toString(_ numFormat:String) -> String? {
        
        let nf = NumberFormatter()
        nf.positiveFormat = numFormat
        return nf.string(from: self)
    }
}
NSNumber(value: 0).toString("0.00")