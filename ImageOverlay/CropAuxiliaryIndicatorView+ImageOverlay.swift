//
//  CropAuxiliaryIndicatorView+ImageOverlay.swift
//  Mantis
//
//  Created by Matteo Morelli on 05.07.23.
//

import Foundation
import UIKit

extension CropAuxiliaryIndicatorView {
    convenience init(frame: CGRect, cropBoxHotAreaUnit: CGFloat, disableCropBoxDeformation: Bool = false, overlayImage: UIImage? = nil, overlayImageAlpha: CGFloat = 0) {
        self.init(frame: frame, cropBoxHotAreaUnit: cropBoxHotAreaUnit, disableCropBoxDeformation: disableCropBoxDeformation)

        if let overlayImage = overlayImage {
            let imageView = UIImageView(image: overlayImage)
            imageView.contentMode = .scaleAspectFill
            imageView.frame = bounds
            imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            imageView.alpha = overlayImageAlpha
            addSubview(imageView)
        }
    }
}
