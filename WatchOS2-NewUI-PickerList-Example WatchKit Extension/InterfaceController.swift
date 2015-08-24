//
//  InterfaceController.swift
//  WatchOS2-NewUI-PickerList-Example WatchKit Extension
//
//  Created by Wlad Dicario on 24/08/2015.
//  Copyright © 2015 Sweefties. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var pickerList: WKInterfacePicker!
    @IBOutlet var pickerListTitle: WKInterfaceLabel!
    
    var pickerItems: [WKPickerItem] = []
    var object = [String]()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        appendObjectStrings()
        setDataList()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        initSelectedItemLbl()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func pickerSelected(value: Int) {
        let selectedItem = self.pickerItems[value]
        self.pickerListTitle.setText(selectedItem.title!)
    }
    
}

//MARK: Interface Controller Extension
extension InterfaceController {
    
    // set Data List for Picker List
    func setDataList() {
        for i in 0...15 {
            let item = WKPickerItem()
            item.title = "\(object[i])"
            pickerItems.append(item)
        }
        self.pickerList.setItems(pickerItems)
    }
    
    // init selected Item Label
    func initSelectedItemLbl() {
        let selectedItem = self.pickerItems[0]
        self.pickerListTitle.setText(selectedItem.title!)
    }
    
    // append object list strings
    func appendObjectStrings() {
        self.object = ["OS X El Capitan", "iOS 9.0", "watchOS 2", "Swift 2", "Multitasking", "Search API", "GameplayKit", "ReplayKit", "Model I/O", "App Thinning", "Error handling model", "Availability", "Control Flow", "Protocol extensions", "Extended Patterns", "Open Source"]
    }
}
