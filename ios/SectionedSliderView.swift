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
let DEFAULT_SLIDER_COLOR = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
let DEFAULT_SLIDER_BACKGROUND_COLOR: UIColor? = nil

class SectionedSliderView: UIView, SectionedSliderDelegate {
	@objc var sections: NSNumber?
	@objc var selectedSection: NSNumber?
	@objc var sliderBackgroundColor: UIColor?
	@objc var sliderColor: UIColor?
	@objc var onSelectedSectionChange: RCTDirectEventBlock?
	var slider: SectionedSlider {
		didSet {
			self.slider.delegate = self
		}
	}
	
	override var bounds: CGRect {
		didSet {
			self.slider.frame = self.bounds
			print("\(LOG_ID): Updated Slider.frame to \(self.bounds)")
		}
	}
	override var backgroundColor: UIColor? {
		didSet {
			self.rebuildSlider()
		}
	}

	override init(frame: CGRect) {
		self.slider = SectionedSlider(frame: frame, selectedSection: DEFAULT_SELECTED_SECTION, sections: DEFAULT_SECTIONS)
		super.init(frame: frame)
		self.addSubview(self.slider)
	}

	required init?(coder aDecoder: NSCoder) {
	  fatalError("init(coder:) has not been implemented")
	}

	override func didSetProps(_ changedProps: [String]!) {
		print("\(LOG_ID): Properties changed! \(String(describing: changedProps))")
		if changedProps.contains("sections") {
			self.slider.sections = self.sections?.intValue ?? DEFAULT_SECTIONS
		}
		if changedProps.contains("selectedSection") {
			self.slider.selectedSection = self.selectedSection?.intValue ?? DEFAULT_SELECTED_SECTION
		}
		if changedProps.contains("sliderBackgroundColor") || changedProps.contains("sliderColor") {
			self.rebuildSlider()
		}
	}
	
	// Required to change palette.
	func rebuildSlider() {
		self.subviews.forEach({ $0.removeFromSuperview() })
		self.slider = SectionedSlider(
			frame: self.bounds,
			selectedSection: self.selectedSection?.intValue ?? DEFAULT_SELECTED_SECTION,
			sections: self.sections?.intValue ?? DEFAULT_SECTIONS,
			palette: Palette(
				viewBackgroundColor: self.backgroundColor,
				sliderBackgroundColor: self.sliderBackgroundColor,
				sliderColor: self.sliderColor))
		self.addSubview(slider)
	}
	
	
	func sectionChanged(slider: SectionedSlider, selected: Int) {
		if self.onSelectedSectionChange != nil {
			self.onSelectedSectionChange!(["selectedSection": selected])
		}
	}
}

