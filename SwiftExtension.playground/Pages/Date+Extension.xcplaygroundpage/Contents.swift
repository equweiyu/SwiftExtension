import Foundation


extension Date {
    func toString(_ dateFormat:String) -> String {
        let df = DateFormatter()
        df.dateFormat = dateFormat
        return df.string(from: self)
    }
}
