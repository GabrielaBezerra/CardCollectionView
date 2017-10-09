//
//  Alert.swift
//  PreAtivRotas
//
//  Created by Gabriela Bezerra on 08/08/17.
//  Copyright © 2017 com.GabrielaBezerra. All rights reserved.
//

import Foundation
import UIKit


class Alert {
  
  static func showYesOrNo(title: String, msg: String, view: UIViewController?, function: @escaping (()->()) ) {
    
    let alertController = UIAlertController(title: title, message: msg, preferredStyle: .alert)
    
    let yesAction = UIAlertAction(title: "Sim", style: .default) { UIAlertAction in
      function()
    }
    
    let noAction = UIAlertAction(title: "Não", style: .default)
    
    alertController.addAction(noAction)
    alertController.addAction(yesAction)
    
    if let view = view {
      view.present(alertController, animated: true, completion: nil)
    } else if let view = UIApplication.shared.keyWindow?.visibleViewController {
      view.present(alertController, animated: true, completion: nil)
    }
  }
  
  static func show(title: String, msg: String, view: UIViewController?, function: (()->())?) {
    
    let alertController = UIAlertController(title: title, message: msg, preferredStyle: .alert)
    
    var okAction = UIAlertAction(title: "OK", style: .default)
    if let function = function {
      okAction = UIAlertAction(title: "OK", style: .default) { UIAlertAction in
        function()
      }
    }
    
    alertController.addAction(okAction)
    
    if let view = view {
      view.present(alertController, animated: true, completion: nil)
    } else if let view = UIApplication.shared.keyWindow?.visibleViewController {
      view.present(alertController, animated: true, completion: nil)
    }
    
  }
  
  
  
  static func show(title: String, msg: String, view: UIViewController?, function: (()->())?, completion: @escaping () -> Void ) {
    
    let alertController = UIAlertController(title: title, message: msg, preferredStyle: .alert)
    
    var okAction = UIAlertAction(title: "OK", style: .default)
    if let function = function {
      okAction = UIAlertAction(title: "OK", style: .default) { UIAlertAction in
        UIApplication.shared.keyWindow?.visibleViewController?.dismiss(animated: true, completion: nil)
        function()
        completion()
      }
    }
    
    alertController.addAction(okAction)
    
    if let view = view {
      view.present(alertController, animated: true, completion: nil)
    } else if let view = UIApplication.shared.keyWindow?.visibleViewController {
      view.present(alertController, animated: true, completion: nil)
    }
  }
  
}

