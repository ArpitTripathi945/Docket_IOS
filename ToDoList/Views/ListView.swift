//
//  ListView.swift
//  ToDoList
//
//  Created by Arpit Tripathi on 09/12/24.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        ZStack {
            if(listViewModel.items.isEmpty) {
                NoItemsView()
                    .transition(AnyTransition.opacity
                        .animation(.easeIn))
            }else{
                List{
                    ForEach(listViewModel.items) { item in
                        ListRowView(item: item)
                            .onTapGesture{
                                withAnimation(.linear){
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                }
                
            }
        }
        .navigationTitle("Todo List")
        .navigationBarTitleDisplayMode(.large)
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
}

#Preview {
    NavigationView{
        ListView()
        AddView()
    }
    .environmentObject(ListViewModel())
    
}
