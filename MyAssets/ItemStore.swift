//
//  ItemStore.swift
//  MyAssets
//
//  Created by Inga Klassy on 10/2/18.
//  Copyright © 2018 Inga Klassy. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    func createItem() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
        return newItem
    }
    
    func removeItem (item: Item) {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }
    
    func moveItemAtIndex(fromIndex: Int, toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        
        //get reference to object being moved so you can reinsert it
        let movedItem = allItems[fromIndex]
        //remove item from array
        allItems.remove(at: fromIndex)
        //insert item in array at new location
        allItems.insert(movedItem, at: toIndex)
        
    }
}
