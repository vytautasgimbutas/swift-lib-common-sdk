import ObjectMapper

open class PSBaseFilter: Mappable {
    public var limit: Int?
    public var orderBy: String?
    public var orderDirection: String?
    
    required public init?(map: Map) {
    }
    
    public init() {
    }
    
    open func mapping(map: Map) {
        limit           <- map["limit"]
        orderBy         <- map["order_by"]
        orderDirection  <- map["order_direction"]
    }
}
