//
//  InterfaceController.swift
//  WatchKit2-Sample-Movie WatchKit Extension
//
//  Created by XuQing on 15/7/12.
//  Copyright © 2015年 XuQing1001. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var movie: WKInterfaceMovie!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let moviePath = NSBundle.mainBundle().pathForResource("video", ofType: "mov")
        movie.setMovieURL(NSURL(fileURLWithPath: moviePath!))
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
