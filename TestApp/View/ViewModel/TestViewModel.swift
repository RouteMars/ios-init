//
//  TestViewModel.swift
//  TestApp
//
//  Created by admin on 2023/02/17.
//

import Combine

class TestViewModel: ObservableObject {
    
    @Published var album: TestModel?
    
    init() {}
    
    func getAlbum(_ id: Int) {
        TestProvider().getAlbum(id) { value in
            switch value {
            case .success(let result):
                self.album = result
                print(result)
            
            case .failure(let error):
                print(error)
            }
        }
    }
}
