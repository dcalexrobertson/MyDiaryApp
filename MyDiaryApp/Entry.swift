//
//  Entry.swift
//  MyDiaryApp
//
//  Created by Alex on 2016-04-30.
//  Copyright © 2016 Alex. All rights reserved.
//

import UIKit

class Entry {
    
    var title: String
    var description: String
    var updatedAt: NSDate
    
    var imageURLString: String?
    
    var image: UIImage?
    
    let createdAt: NSDate
    
    var read: Bool
    
    init(title: String, description: String, imageURLString: String?) {
        self.title = title
        self.description = description
        self.updatedAt = NSDate()
        self.createdAt = NSDate()
        
        self.read = false
    }
    
    class func creatieSampleEntries() -> [Entry] {
        
        let entries =
            
            [Entry(title: "Entry #1", description: "Viral health goth plaid ugh, kinfolk 8-bit pork belly single-origin coffee fashion axe pop-up flexitarian. Tousled bitters slow-carb sartorial flexitarian, paleo letterpress blue bottle tote bag migas taxidermy occupy leggings cornhole. Jean shorts locavore portland hammock single-origin coffee, +1 pinterest distillery. Beard mlkshk retro sustainable. Kickstarter kombucha disrupt helvetica, street art art party pork belly literally butcher. Fashion axe typewriter lomo selvage. Helvetica tofu neutra, art party messenger bag godard fashion axe.", imageURLString: nil),
             
             Entry(title: "Entry #2", description: "Viral health goth plaid ugh, kinfolk 8-bit pork belly single-origin coffee fashion axe pop-up flexitarian. Tousled bitters slow-carb sartorial flexitarian, paleo letterpress blue bottle tote bag migas taxidermy occupy leggings cornhole. Jean shorts locavore portland hammock single-origin coffee, +1 pinterest distillery. Beard mlkshk retro sustainable. Kickstarter kombucha disrupt helvetica, street art art party pork belly literally butcher. Fashion axe typewriter lomo selvage. Helvetica tofu neutra, art party messenger bag godard fashion axe.", imageURLString: nil),
             
             Entry(title: "Entry #3", description: "Viral health goth plaid ugh, kinfolk 8-bit pork belly single-origin coffee fashion axe pop-up flexitarian. Tousled bitters slow-carb sartorial flexitarian, paleo letterpress blue bottle tote bag migas taxidermy occupy leggings cornhole. Jean shorts locavore portland hammock single-origin coffee, +1 pinterest distillery. Beard mlkshk retro sustainable. Kickstarter kombucha disrupt helvetica, street art art party pork belly literally butcher. Fashion axe typewriter lomo selvage. Helvetica tofu neutra, art party messenger bag godard fashion axe.", imageURLString: nil),
             
             Entry(title: "Entry #4", description: "Viral health goth plaid ugh, kinfolk 8-bit pork belly single-origin coffee fashion axe pop-up flexitarian. Tousled bitters slow-carb sartorial flexitarian, paleo letterpress blue bottle tote bag migas taxidermy occupy leggings cornhole. Jean shorts locavore portland hammock single-origin coffee, +1 pinterest distillery. Beard mlkshk retro sustainable. Kickstarter kombucha disrupt helvetica, street art art party pork belly literally butcher. Fashion axe typewriter lomo selvage. Helvetica tofu neutra, art party messenger bag godard fashion axe.", imageURLString: nil),
             
             Entry(title: "Entry #5", description: "Viral health goth plaid ugh, kinfolk 8-bit pork belly single-origin coffee fashion axe pop-up flexitarian. Tousled bitters slow-carb sartorial flexitarian, paleo letterpress blue bottle tote bag migas taxidermy occupy leggings cornhole. Jean shorts locavore portland hammock single-origin coffee, +1 pinterest distillery. Beard mlkshk retro sustainable. Kickstarter kombucha disrupt helvetica, street art art party pork belly literally butcher. Fashion axe typewriter lomo selvage. Helvetica tofu neutra, art party messenger bag godard fashion axe.", imageURLString: "http://13201-presscdn-0-58.pagely.netdna-cdn.com/wp-content/uploads/2014/02/Brad-Pitt-2.jpg"),
             
             Entry(title: "Entry #6", description: "Viral health goth plaid ugh, kinfolk 8-bit pork belly single-origin coffee fashion axe pop-up flexitarian. Tousled bitters slow-carb sartorial flexitarian, paleo letterpress blue bottle tote bag migas taxidermy occupy leggings cornhole. Jean shorts locavore portland hammock single-origin coffee, +1 pinterest distillery. Beard mlkshk retro sustainable. Kickstarter kombucha disrupt helvetica, street art art party pork belly literally butcher. Fashion axe typewriter lomo selvage. Helvetica tofu neutra, art party messenger bag godard fashion axe. \n Viral health goth plaid ugh, kinfolk 8-bit pork belly single-origin coffee fashion axe pop-up flexitarian. Tousled bitters slow-carb sartorial flexitarian, paleo letterpress blue bottle tote bag migas taxidermy occupy leggings cornhole. Jean shorts locavore portland hammock single-origin coffee, +1 pinterest distillery. Beard mlkshk retro sustainable. Kickstarter kombucha disrupt helvetica, street art art party pork belly literally butcher. Fashion axe typewriter lomo selvage. Helvetica tofu neutra, art party messenger bag godard fashion axe.", imageURLString: nil),
             
             Entry(title: "Entry #7", description: "Viral health goth plaid ugh, kinfolk 8-bit pork belly single-origin coffee fashion axe pop-up flexitarian. Tousled bitters slow-carb sartorial flexitarian, paleo letterpress blue bottle tote bag migas taxidermy occupy leggings cornhole. Jean shorts locavore portland hammock single-origin coffee, +1 pinterest distillery. Beard mlkshk retro sustainable. Kickstarter kombucha disrupt helvetica, street art art party pork belly literally butcher. Fashion axe typewriter lomo selvage. Helvetica tofu neutra, art party messenger bag godard fashion axe.", imageURLString: nil),
             
             Entry(title: "Entry #8", description: "Viral health goth plaid ugh, kinfolk 8-bit pork belly single-origin coffee fashion axe pop-up flexitarian. Tousled bitters slow-carb sartorial flexitarian, paleo letterpress blue bottle tote bag migas taxidermy occupy leggings cornhole. Jean shorts locavore portland hammock single-origin coffee, +1 pinterest distillery. Beard mlkshk retro sustainable. Kickstarter kombucha disrupt helvetica, street art art party pork belly literally butcher. Fashion axe typewriter lomo selvage. Helvetica tofu neutra, art party messenger bag godard fashion axe.", imageURLString: nil),
             
             Entry(title: "Entry #9", description: "Viral health goth plaid ugh, kinfolk 8-bit pork belly single-origin coffee fashion axe pop-up flexitarian. Tousled bitters slow-carb sartorial flexitarian, paleo letterpress blue bottle tote bag migas taxidermy occupy leggings cornhole. Jean shorts locavore portland hammock single-origin coffee, +1 pinterest distillery. Beard mlkshk retro sustainable. Kickstarter kombucha disrupt helvetica, street art art party pork belly literally butcher. Fashion axe typewriter lomo selvage. Helvetica tofu neutra, art party messenger bag godard fashion axe.", imageURLString: nil),
             
             Entry(title: "Entry #10", description: "Viral health goth plaid ugh, kinfolk 8-bit pork belly single-origin coffee fashion axe pop-up flexitarian. Tousled bitters slow-carb sartorial flexitarian, paleo letterpress blue bottle tote bag migas taxidermy occupy leggings cornhole. Jean shorts locavore portland hammock single-origin coffee, +1 pinterest distillery. Beard mlkshk retro sustainable. Kickstarter kombucha disrupt helvetica, street art art party pork belly literally butcher. Fashion axe typewriter lomo selvage. Helvetica tofu neutra, art party messenger bag godard fashion axe.", imageURLString: nil)]
        
        return entries
    }
    
}