//
//  Test.swift
//  ControlTectMonth4
//
//  Created by Mac User on 15/11/23.
//

import Foundation
import UIKit
protocol Test{
    
    func checking(tf1:String, tf2: String, tf3: UILabel)
    }

    extension Test{
        
        func checking(tf1:String, tf2: String, tf3: UILabel){
            
            if tf1 == tf2 {
                tf3.text = "Succes"
                tf3.textColor = .green
            }else{
                
                tf3.text = "Error"
                tf3.textColor = .red
            }
        }
    }

