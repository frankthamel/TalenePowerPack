//
//  TaleneFancyButton.swift
//  TalenePowerPack
//
//  Created by frank thamel on 5/28/17.
//  Copyright © 2017 Talene. All rights reserved.
//

import UIKit

@IBDesignable
class TaleneFancyButton: UIButton {
    
    // set corner radius property
    @IBInspectable public var cornerRadius : CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    // set button border width
    @IBInspectable public var borderWidth : CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    // set button border color
    @IBInspectable public var borderColor : UIColor = .black {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    /*
     *  Set title padding
     */
    
    // Set title left padding
    @IBInspectable public var titleLeftPadding : CGFloat = 0.0 {
        didSet {
            titleEdgeInsets.left = titleLeftPadding
        }
    }
    
    // Set title rigt padding
    @IBInspectable public var titleRightPadding : CGFloat = 0.0 {
        didSet {
            titleEdgeInsets.right = titleRightPadding
        }
    }
    
    // Set title top padding
    @IBInspectable public var titleTopPadding : CGFloat = 0.0 {
        didSet {
            titleEdgeInsets.top = titleTopPadding
        }
    }
    
    // Set title Bottom padding
    @IBInspectable public var titleBottomPadding : CGFloat = 0.0 {
        didSet {
            titleEdgeInsets.bottom = titleBottomPadding
        }
    }
    
    
    /*
     *  Set image padding
     */
    
    // set image left padding
    @IBInspectable public var imageLeftPadding : CGFloat = 0.0 {
        didSet {
            imageEdgeInsets.left = imageLeftPadding
        }
    }
    
    // set image right padding
    @IBInspectable public var imageRightPadding : CGFloat = 0.0 {
        didSet {
            imageEdgeInsets.right = imageRightPadding
        }
    }
    
    // set image top padding
    @IBInspectable public var imageTopPadding : CGFloat = 0.0 {
        didSet {
            imageEdgeInsets.top = imageTopPadding
        }
    }
    
    // set image bottom padding
    @IBInspectable public var imageBottomPadding : CGFloat = 0.0 {
        didSet {
            imageEdgeInsets.bottom = imageBottomPadding
        }
    }
    
    // set image right alligned
    @IBInspectable public var enableImageRightAligned : Bool = false
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if enableImageRightAligned {
            if let imageView = imageView {
                imageEdgeInsets.left = self.bounds.width - imageView.bounds.width - imageRightPadding
            }
        }
    }
    
}
