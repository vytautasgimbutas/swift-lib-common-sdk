import Foundation

public enum PSLoggerLevel {
    case INFO, ERROR
}

public protocol PSLoggerProtocol {
    func log(level: PSLoggerLevel, message: String)
}
