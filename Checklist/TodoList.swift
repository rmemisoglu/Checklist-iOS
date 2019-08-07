//
//  TodoList.swift
//  Checklist
//
//  Created by Others on 26.06.2019.
//  Copyright © 2019 Others. All rights reserved.
//

import Foundation

class TodoList{
    
    enum Priority: Int, CaseIterable{
        case high, medium, low, no
    }
    
    private var highPriorityTodos: [ChecklistItem]=[]
    private var mediumPriorityTodos: [ChecklistItem]=[]
    private var lowPriorityTodos: [ChecklistItem]=[]
    private var noPriorityTodos: [ChecklistItem]=[]
    
    
    //var todos:[ChecklistItem] = []
    
    init() {
        let row0Item = ChecklistItem()
        let row1Item = ChecklistItem()
        let row2Item = ChecklistItem()
        let row3Item = ChecklistItem()
        let row4Item = ChecklistItem()
        
    
        row0Item.text = "Take a jog"
        row1Item.text = "Watch a movie"
        row2Item.text = "Code an app"
        row3Item.text = "Walk the dog"
        row4Item.text = "Study design patterns"
        
        addTodo(row0Item, for: .medium)
        addTodo(row1Item, for: .low)
        addTodo(row2Item, for: .high)
        addTodo(row3Item, for: .medium)
        addTodo(row4Item, for: .no)
    }
    
    func addTodo(_ item:ChecklistItem, for priority: Priority, at index: Int = -1){
        switch priority{
        case .high:
            if index < 0 {
                highPriorityTodos.append(item)
            }else {
                highPriorityTodos.insert(item, at: index)
            }
        case .medium:
            if index < 0 {
                mediumPriorityTodos.append(item)
            }else {
                mediumPriorityTodos.insert(item, at: index)
            }
        case .low:
            if index < 0 {
                lowPriorityTodos.append(item)
            }else {
                lowPriorityTodos.insert(item, at: index)
            }
        case .no:
            if index < 0 {
                noPriorityTodos.append(item)
            }else {
                noPriorityTodos.insert(item, at: index)
            }
        }
    }
    
    func todoList(for priority: Priority) -> [ChecklistItem]{
        switch priority{
        case .high:
            return highPriorityTodos
        case .medium:
            return mediumPriorityTodos
        case .low:
            return lowPriorityTodos
        case .no:
            return noPriorityTodos
        }
    }
    
    func newTodo() -> ChecklistItem {
        let item = ChecklistItem()
        item.checked = true
        item.text = randomTitle()
        mediumPriorityTodos.append(item)
        return item
    }
    
    func move(item: ChecklistItem, from sourcePriority: Priority, at sourceIndex: Int, to destinationPriority: Priority, at destinationIndex: Int){
        remove(item, from: sourcePriority, at: sourceIndex)
        addTodo(item, for: destinationPriority, at: destinationIndex)
    }
    
    func remove(_ item: ChecklistItem, from priority: Priority, at index: Int){
        switch priority{
        case .high:
            highPriorityTodos.remove(at: index)
        case .medium:
            mediumPriorityTodos.remove(at: index)
        case .low:
            lowPriorityTodos.remove(at: index)
        case .no:
            noPriorityTodos.remove(at: index)
        }
    }
    
    private func randomTitle() -> String {
        var titles = ["New todo item", "Generic todo", "Fill me out", "I need something","Something went wrong", "Ibra Kadabra","Much todo about nothing", "Fill so crazy","Flip flap flop!"]
        
        let randomNumber = Int.random(in: 0 ... titles.count - 1 )
        
        return titles[randomNumber]
    }
}
