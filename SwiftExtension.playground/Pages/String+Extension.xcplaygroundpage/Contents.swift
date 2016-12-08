
import Foundation
import UIKit

extension String {
    func toDate(_ dateFormat:String) -> Date? {
        let df = DateFormatter()
        df.dateFormat = dateFormat
        return df.date(from: self)
    }
    
    func contains(regular:String) -> Bool {
        return self.range(of: regular, options: .regularExpression, range: nil, locale: nil) != nil
    }
    
    var length: Int {
        return self.characters.count
    }
    
    func substring(to:Int) -> String {
        return self.substring(to: self.index(self.startIndex, offsetBy: to, limitedBy: self.endIndex) ?? self.endIndex)
    }
    func substring(from:Int) -> String {
        return self.substring(from: self.index(self.startIndex, offsetBy: from, limitedBy: self.endIndex) ?? self.endIndex)
    }
    subscript (r: Range<Int>) -> String {
        let start = self.index(self.startIndex, offsetBy: r.lowerBound, limitedBy: self.endIndex) ?? self.endIndex
        let end = self.index(self.startIndex, offsetBy: r.upperBound, limitedBy: self.endIndex) ?? self.endIndex
        return self[start..<end]
    }
    subscript (n:Int) -> String {
        return self[n..<n+1]
    }
    subscript (str:String) -> Range<Index>? {
        return self.range(of: str)
    }
    
    
    func attributed(fontSize:CGFloat,textColor:UIColor) -> NSAttributedString {
        return  NSAttributedString(string: self, attributes: [NSFontAttributeName:UIFont.systemFont(ofSize: fontSize),NSForegroundColorAttributeName:textColor])
    }
}

