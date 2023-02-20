//
//  TestProvider.swift
//  TestApp
//
//  Created by admin on 2023/02/17.
//

import Moya

class TestProvider {
    
    private let provider = MoyaProvider<TestAPI>()
    
    /// MARK - TEST API
    func getAlbum(_ id: Int, completion: @escaping APIResult<TestModel>) {
        provider.request(.getAlbum(id)) { result in
            switch result {
            case .success(let response):
                do {
                    let decoded = try JSONDecoder().decode(TestModel.self, from: response.data)
                    completion(.success(decoded))
                } catch {
                    completion(.failure(error))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
