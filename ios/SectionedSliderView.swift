//
//  SectionedSliderView.swift
//  SectionedSlider
//
//  Created by Marc Rousavy on 03.07.20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation
import UIKit

let LOG_ID = "SectionedSliderView"

class SectionedSliderView: UIView {
	@objc var sections: NSNumber?
	@objc var selectedSection: NSNumber?

	override init(frame: CGRect) {
		super.init(frame: frame)
		// TODO:
	}

	required init?(coder aDecoder: NSCoder) {
	  fatalError("init(coder:) has not been implemented")
	}

	override func didSetProps(_ changedProps: [String]!) {
		print("\(LOG_ID): Properties changed! \(String(describing: changedProps))")
		// TODO:
	}
}

