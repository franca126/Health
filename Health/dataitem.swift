//
//  dataitem.swift
//  Health
//
//  Created by Francesca Pia Sasso on 21/11/23.
//

import Foundation
import SwiftUI

struct DataItem {
    let id = UUID()
    let imageName: String
    let imageColor: Color
    var value: String
    let unit: String
}
