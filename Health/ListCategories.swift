//
//  ListCategories.swift
//  Health
//
//  Created by Francesca Pia Sasso on 15/11/23.
//

import SwiftUI

class ListCategories {
    
    var categories: [Categories] = [
        Categories (SystemName: Image(systemName: "wind"), name: "Smoke Tracker", color: .gray),
        Categories (SystemName: Image(systemName: "flame.fill"), name: "Activity", color: .activityCol),
        Categories (SystemName: Image(systemName:"figure"), name: "Body Measurements", color: .purple),
        Categories (SystemName: Image(systemName:"circle.dotted"), name: "Cycle Tracking", color: .orange),
        Categories (SystemName: Image(systemName:"hearingdevice.ear"), name: "Hearing", color: .blue),
        Categories (SystemName: Image(systemName:"heart.fill"), name: "Heart", color: .red),
        Categories (SystemName: Image(systemName:"pills.fill"), name: "Medications", color: .provacolore2),
        Categories (SystemName: Image(systemName:"brain.head.profile"), name: "Mental Wellbeing", color: .mint),
        Categories (SystemName: Image(systemName:"arrow.down.left.arrow.up.right"), name: "Mobility", color: .yellow),
        Categories (SystemName: Image(systemName:"fork.knife"), name: "Nutrition", color: .green),
        Categories (SystemName: Image(systemName:"lungs.fill"), name: "Respiratory", color: .provacolore3),
        Categories (SystemName: Image(systemName:"bed.double.fill"), name: "Sleep", color: .mint),
        Categories (SystemName: Image(systemName:"doc"), name: "Symptoms", color: .provacolore),
        Categories (SystemName: Image(systemName:"syringe"), name: "Vitals", color: .gray),
        Categories (SystemName: Image(systemName:"rectangle.stack.badge.plus"), name: "Other Data", color: .provacolore1),
        Categories (SystemName: Image(systemName:"doc"), name: "Clinical Documents", color: .cyan)
    ]
    
}
