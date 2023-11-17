//
//  ListCategoriesModel.swift
//  Health
//
//  Created by Francesca Pia Sasso on 15/11/23.
//


import SwiftUI

struct Categories: Identifiable {
    var id: UUID = UUID()
    var SystemName: Image
    var name: String
    var color: Color
}
