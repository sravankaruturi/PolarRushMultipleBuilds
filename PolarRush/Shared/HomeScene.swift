//
//  HomeScene.swift
//  PolarRush
//
//  Created by Sravan Karuturi on 03/12/16.
//  Copyright © 2016 Sravan Karuturi. All rights reserved.
//

import Foundation
import SpriteKit

class HomeScene: GameScene{
    
    // If tvOS, detect button press.
    
    func remotePressed(){
        print("kpap")
    }
    
    #if os(tvOS) || os(iOS)
    
//    let tapRecogniser = UITapGestureRecognizer(target: self, action: #selector(remotePressed(_:)))
    //tapRecogniser.allowedPressTypes = [NSNumber(value: UIPressType.select.rawValue)];
//        let tapRecogniser = UITapGestureRecognizer(target: self, action: #selector(remotePressed(_:)))
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    #endif
    
    // If iOS, detect Tap.
    
    // If MacOs, detect Spacebar.
    #if os(macOS)
    
    override func keyDown(with event: NSEvent) {
        guard !event.isARepeat else { return }
        let keyCode: UInt16 = event.keyCode
        if keyCode == 49 {
            loadMenuScene()
        }
    }
    
    #endif
    
    
    func loadMenuScene(){
        
    }
    
}
