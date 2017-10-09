//
//  CardView.swift
//  Cardview
//
//  Created by Gabriela Bezerra on 09/10/17.
//  Copyright © 2017 gabrielabezerra. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CardView: UIView {
  
  @IBInspectable var cornerRadius: CGFloat = 0
  @IBInspectable var shadowOffsetWidth: Int = -3
  @IBInspectable var shadowOffsetHeight: Int = 5
  @IBInspectable var shadowColor: UIColor? = UIColor.lightGray
  @IBInspectable var shadowOpacity: Float = 0.5
  
  override func layoutSubviews() {
    layer.cornerRadius = cornerRadius
    layer.masksToBounds = false
    layer.shadowColor = shadowColor?.cgColor
    layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
    layer.shadowOpacity = shadowOpacity
    layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius+3).cgPath
  }
  
}

