//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Arpit Tripathi on 15/11/24.
//

import SwiftUI

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationBarTitleDisplayMode(.large)
            .environmentObject(listViewModel)
        }
    }
}
