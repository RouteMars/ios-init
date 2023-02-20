//
//  TitleNavBarItem.swift
//  TestApp
//
//  Created by admin on 2023/02/17.
//

import SwiftUI

struct PagerTitleItem: View {
    let title: String
    let systomIcon: String
    var body: some View {
        VStack {
            Image(systemName: systomIcon)
                .foregroundColor( .white)
                .font(.title)
            
            Text( title)
                .font(.system(size: 22))
                .bold()
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}

struct PagerTitleItem_Previews: PreviewProvider {
    static var previews: some View {
        PagerTitleItem(title: "TEST", systomIcon: "lock.fill")
    }
}
