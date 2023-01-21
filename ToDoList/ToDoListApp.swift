//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Bob Coleman on 1/17/23.
//

import SwiftUI


/*
 MVVM Architechture
 
 Model - data point
 View - UI
 ViewMOdel - manages Models for View
 
 */

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
