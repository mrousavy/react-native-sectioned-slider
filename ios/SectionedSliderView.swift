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
	let slider: SectionedSlider

	override init(frame: CGRect) {
		self.slider = SectionedSlider(frame: frame, selectedSection: DEFAULT_SELECTED_SECTION, sections: DEFAULT_SECTIONS)
		super.init(frame: frame)
		self.addSubview(self.slider)
		// TODO:
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

