//
//  SectionedSliderView.swift
//  SectionedSlider
//
//  Created by Marc Rousavy on 03.07.20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation
import UIKit
import SectionedSlider

let LOG_ID = "SectionedSliderView"
let DEFAULT_SECTIONS = 10
let DEFAULT_SELECTED_SECTION = 2

class SectionedSliderView: UIView {
	@objc var sections: NSNumber?
	@objc var selectedSection: NSNumber?
	@objc var height: NSNumber?
	@objc var width: NSNumber?
	let slider: SectionedSlider
	
	override var bounds: CGRect {
		didSet {
			self.slider.frame = self.bounds
			print("\(LOG_ID): Updated Slider.frame to \(self.bounds)")
		}
	}

	override init(frame: CGRect) {
		self.slider = SectionedSlider(frame: frame, selectedSection: DEFAULT_SELECTED_SECTION, sections: DEFAULT_SECTIONS)
		super.init(frame: frame)
		self.contentMode = .scaleToFill
		self.addSubview(self.slider)
	}

	required init?(coder aDecoder: NSCoder) {
	  fatalError("init(coder:) has not been implemented")
	}

	override func didSetProps(_ changedProps: [String]!) {
		print("\(LOG_ID): Properties changed! \(String(describing: changedProps))")
		self.slider.sections = self.sections?.intValue ?? DEFAULT_SECTIONS
		self.slider.selectedSection = self.selectedSection?.intValue ?? DEFAULT_SELECTED_SECTION
	}
}

