//
//  Test1View.swift
//  TestApp
//
//  Created by admin on 2023/02/17.
//

import SwiftUI
import Combine

struct Test1View: View {
    
    var testViewModel: TestViewModel
    
    let size = UIScreen.main.bounds
    var body: some View {
        VStack() {
            if let a = testViewModel.album {
                Text(String(a.userId))
                Text(a.title)
            }
        }
        .frame(width: size.width, height: size.height)
        .background(Color(.gray))
        .onAppear {
            print("onAppear~~~~")
            testViewModel.getAlbum(3)
        }
    }
}

struct Test1View_Previews: PreviewProvider {
    static var previews: some View {
        Test1View(testViewModel: TestViewModel())
    }
}
