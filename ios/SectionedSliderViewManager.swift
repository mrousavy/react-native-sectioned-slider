//
//  SectionedSliderViewManager.swift
//  SectionedSlider
//
//  Created by Marc Rousavy on 03.07.20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation
import UIKit

@objc(SectionedSliderViewManager)
class SectionedSliderViewManager: RCTViewManager {
	override func view() -> UIView! {
		return SectionedSliderView()
	}
	
	override static func requiresMainQueueSetup() -> Bool {
		return true
	}
}

