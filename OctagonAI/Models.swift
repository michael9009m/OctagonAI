//
//  Models.swift
//  OctagonAI
//
//  Created by Michael Martinez on 12/21/25.
//

import Foundation
import SwiftUI

struct Event: Identifiable {
    let id: UUID
    let name: String
    let fights: [Fight]
}

struct Fight: Identifiable {
    let id: UUID
    let fighterA: String
    let fighterARecord: String
    let fighterB: String
    let fighterBRecord: String
    let weightClass: String   // new
    let section: CardSection
}



enum CardSection {
    case earlyPrelims
    case prelims
    case mainCard
}
