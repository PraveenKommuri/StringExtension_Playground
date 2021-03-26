import UIKit

extension String {


    /// Method to check whether the string has only characters.
    /// - Returns: bool value.
    func isNumber() -> Bool {
        return !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
    }

    /// Method to validate email address string
    /// - Returns: BOOL
    func isValidEmailAddress() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format:"SELF MATCHES[c] %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }

    /// Method to trim the white spaces in the given string
    /// - Returns: trimmed string
    func trimWhiteSpaces() -> String {
        guard !self.isEmpty else { return self }
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    /// Method to add prefix to the callee string.
    /// - Parameter prefix: prefix string
    /// - Returns: complete string
    func withPrefix(_ prefix: String) -> String {
        guard !self.isEmpty else { return self }
        return prefix + self
    }

    /// Method to add suffix to the callee string
    /// - Parameter suffix: suffix string
    /// - Returns: complete string
    func withSuffix(_ suffix: String) -> String {
        guard !self.isEmpty else { return self }
        return self + suffix
    }

    /// Method to find & replace the target string to the new string
    /// - Parameters:
    ///   - target: target string
    ///   - withString: new string
    /// - Returns: String
    func replace(target: String, withString: String) -> String {
        guard !self.isEmpty else { return self }
        return self.replacingOccurrences(of: target, with: withString)
    }


    /// Method to check whether target string is there in source string or not.
    /// - Parameter string: target string
    /// - Returns: bool value
    func contains(string: String) -> Bool {
        guard !self.isEmpty else { return false }
        return (self.range(of: string) != nil) ? true : false
    }
}



// How to use it.

"25".isNumber()
"Name".isNumber()

"test@test.com".isValidEmailAddress()
"test@test@test".isValidEmailAddress()

let url2 = "https://google."
let fullUrl2 = url2.withSuffix("com")

let url1 = "google.com"
let fullUrl1 = url1.withPrefix("https://")

let originalStr = "Swift is good"
originalStr.replace(target: "good", withString: "damm good")

"swift rocks".contains(string: "rocks")
"swift rocks".contains("abc")



