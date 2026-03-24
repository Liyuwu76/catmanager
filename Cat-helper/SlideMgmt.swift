//
//  SlideMgmt.swift
//
//  Created by Feiner Johannes on 17.03.26.
//  Modified by Liyu Wu on 24.03.26.
//

import Foundation

class SlideMgmt {
    var slides: [Slide]
    private init(){
        self.slides = [
            Slide(title: "My cat", imageName: "cat1"),
            Slide(title: "Cute", imageName: "cat2"),
            Slide(title: "My cat and I", imageName: "cat3")
        ]
    }
    static let sharedInstance = SlideMgmt()
}

