//
//  UIImageView + Extension.swift
//  Codigo Code Test
//
//  Created by Aye Myat Minn on 03/09/2022.
//

import Foundation
import UIKit
import Kingfisher
import Combine

extension UIImageView {
    public func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let maskPath = UIBezierPath(roundedRect: bounds,
                                    byRoundingCorners: corners,
                                    cornerRadii: CGSize(width: radius, height: radius))
        let shape = CAShapeLayer()
        shape.path = maskPath.cgPath
        layer.mask = shape
    }
    
    var contentClippingRect: CGRect {
        guard let image = image else { return bounds }
        
        guard image.size.width > 0 && image.size.height > 0 else { return bounds }
        
        let scale: CGFloat
        if image.size.width > image.size.height {
            scale = bounds.width / image.size.width
        } else {
            scale = bounds.height / image.size.height
        }
        
        let size = CGSize(width: image.size.width * scale, height: image.size.height * scale)
        let x = (bounds.width - size.width) / 2.0
        let y = (bounds.height - size.height) / 2.0
        
        return CGRect(x: x, y: y, width: size.width, height: size.height)
    }
    
    //MARK:- BlurEffect
    func setupBlurEffect (style : UIBlurEffect.Style = .systemThinMaterialDark , alpha : CGFloat = 0.7) {
        let blurEffect = UIBlurEffect(style: style)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.alpha = alpha
        blurEffectView.frame = bounds
        blurEffectView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        addSubview(blurEffectView)
    }
}

extension UIImageView {

//    var tapPublisher: AnyPublisher<Void, Never> {
//        let tapGestureRecognizer = UITapGestureRecognizer()
//        isUserInteractionEnabled = true
//        addGestureRecognizer(tapGestureRecognizer)
//        return tapGestureRecognizer
//            .tapPublisher
//            .compactMap{_ in Void()}
//            .eraseToAnyPublisher()
//    }
}

extension UIImageView {
    func bindImageURL(imageURL: String){
        self.kf.setImage(with: URL(string: imageURL ) , placeholder: #imageLiteral(resourceName: "profile_placeholder_ic"))
    }
}

