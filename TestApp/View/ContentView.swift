//
//  ContentView.swift
//  TestApp
//
//  Created by admin on 2023/02/17.
//

import SwiftUI
import PagerTabStripView

struct ContentView: View {
    
    @StateObject private var test = TestViewModel()
    
    var body: some View {
        PagerTabStripView() {
            Test1View(testViewModel: test).pagerTabItem {
                PagerTitleItem(title: "TEST1", systomIcon: "lock.fill")
            }
            Test2View().pagerTabItem {
                PagerTitleItem(title: "TEST2", systomIcon: "person.circle.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
