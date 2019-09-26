import Foundation

public enum PSLoggerLevel {
    case DEBUG, INFO, ERROR
}

public protocol PSLoggerProtocol {
    func log(level: PSLoggerLevel, message: String)
}
