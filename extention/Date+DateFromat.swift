//  Developed for Daikin Manufacturing Company by Softeq Development Corporation
//  http://www.softeq.com

import Foundation

extension DateFormatter {
    static let dateAndTime: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd, yyyy, HH:mm"
        return formatter
    }()
}

extension Date {
    func string(with formatter: DateFormatter) -> String {
        return formatter.string(from: self)
    }
}

extension String {
    func date(with formatter: DateFormatter) -> Date? {
        return formatter.date(from: self)
    }
}
