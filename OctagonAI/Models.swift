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

struct Fighter: Identifiable {
    let id: UUID
    let name: String
    let record: String
    let rank: Int
    let weightClass: String
    let isChampion: Bool
}
