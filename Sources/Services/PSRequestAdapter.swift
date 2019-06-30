import Foundation
import Alamofire
import CommonCrypto

public class PSRequestAdapter: RequestAdapter {
    private let headers: PSRequestHeaders?
    private let credentials: PSApiJWTCredentials
    
    public init(credentials: PSApiJWTCredentials, headers: PSRequestHeaders? = nil) {
        self.credentials = credentials
        self.headers = headers
    }
    
    public func adapt(_ urlRequest: URLRequest) throws -> URLRequest {
        var urlRequest = urlRequest
        
        urlRequest.setValue("Bearer " + (credentials.token?.string ?? ""), forHTTPHeaderField: "Authorization")
        
        if let headers = headers {
            headers.headers.forEach {
                urlRequest.setValue($0.value, forHTTPHeaderField: $0.headerKey)
            }
        }
            
        return urlRequest
    }
}
