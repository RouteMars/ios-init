//
//  TestAPI.swift
//  TestApp
//
//  Created by admin on 2023/02/17.
//

import Moya

enum TestAPI {
    case getAlbum(Int)
}

extension TestAPI: TargetType {

    var baseURL: URL { URL(string: Info.API_TEST_URL)! }
    
    var headers: [String: String]? { nil }
    
    var path: String {
        switch self {
        case .getAlbum(let id) : return "albums/\(id)"
        }
    }
    
    var method: Moya.Method { .get }
    
    var task: Task { .requestPlain }
    
    // public var validationType: ValidationType { get }
    
    // var sampleData: Data { nil }
}
