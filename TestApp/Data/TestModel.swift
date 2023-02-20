//
//  TestModel.swift
//  TestApp
//
//  Created by admin on 2023/02/17.
//

struct TestModel: Codable {
    var userId: Int
    var id: Int
    var title: String
    var comment: String? = "default comment"
}
