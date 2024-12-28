//
//  ListRowView.swift
//  ToDoList
//
//  Created by Arpit Tripathi on 10/12/24.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
    
}



extension ListRowView{
    static let item1 = ItemModel(title: "First is the first task which i will do", isCompleted: true)
    static let item2 = ItemModel(title: "Second is the second task i will do", isCompleted: false)
}

#Preview (traits: .sizeThatFitsLayout){
    
    Group{
        ListRowView(item: ListRowView.item1)
        ListRowView(item: ListRowView.item2)
    }
}
