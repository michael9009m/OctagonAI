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
    let weightClass: String
    let section: CardSection
}

enum CardSection {
    case earlyPrelims
    case prelims
    case mainCard
}

// ⭐ NEW — Fighter model for the Fighters page
struct Fighter: Identifiable {
    let id: UUID
    let name: String
    let record: String
    let weightClass: String
    let rank: Int
}
