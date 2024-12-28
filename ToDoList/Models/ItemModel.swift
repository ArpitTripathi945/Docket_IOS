//
//  ItemModel.swift
//  ToDoList
//
//  Created by Arpit Tripathi on 11/12/24.
//

import Foundation

// if we want to use this model in For each loop it needs to be confromed to Identifiable
// If we conform it to Codable we can decode and encode this model into data and out of data. JSON parsing type..
struct ItemModel: Identifiable, Codable{
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
    
    
//    func updateTitleCompletion(updatedTitle: String) -> ItemModel {
//        return ItemModel(id: id, title: updatedTitle, isCompleted: isCompleted)
//    }
    
}
 
