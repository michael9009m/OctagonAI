import Foundation
import SwiftUI

import Foundation

import Foundation

struct MockData {
    static let events: [Event] = [

        // UFC 324: Gaethje vs. Pimblett — Jan 24, 2026
        Event(
            id: UUID(),
            name: "UFC 324: Gaethje vs. Pimblett",
            fights: [
                // Early Prelims
                Fight(id: UUID(), fighterA: "Jalin Turner", fighterARecord: "18‑6‑0", fighterB: "Mateusz Gamrot", fighterBRecord: "21‑4‑0", weightClass: "Lightweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Marvin Vettori", fighterARecord: "19‑7‑1", fighterB: "Brunno Ferreira", fighterBRecord: "14‑4‑0", weightClass: "Middleweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Edson Barboza", fighterARecord: "24‑14‑0", fighterB: "Billy Quarantillo", fighterBRecord: "20‑7‑0", weightClass: "Featherweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Aiemann Zahabi", fighterARecord: "11‑4‑0", fighterB: "Cody Durden", fighterBRecord: "13‑7‑0", weightClass: "Flyweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Raoni Barcelos", fighterARecord: "23‑6‑0", fighterB: "Tatsuro Taira", fighterBRecord: "16‑3‑0", weightClass: "Bantamweight", section: .earlyPrelims),

                // Prelims
                Fight(id: UUID(), fighterA: "Umar Nurmagomedov", fighterARecord: "17‑1‑0", fighterB: "Deiveson Figueiredo", fighterBRecord: "24‑9‑0", weightClass: "Bantamweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Nikolas Motta", fighterARecord: "14‑7‑0", fighterB: "Roberto Sanchez", fighterBRecord: "14‑5‑0", weightClass: "Lightweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Trevor Peek", fighterARecord: "9‑3‑0", fighterB: "Jared Gordon", fighterBRecord: "17‑7‑0", weightClass: "Lightweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Grant Dawson", fighterARecord: "18‑2‑0", fighterB: "Bobby Green", fighterBRecord: "29‑16‑0", weightClass: "Lightweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Ode' Osbourne", fighterARecord: "15‑7‑0", fighterB: "Alibi Idiris", fighterBRecord: "12‑3‑0", weightClass: "Flyweight", section: .prelims),

                // Main Card
                Fight(id: UUID(), fighterA: "Justin Gaethje", fighterARecord: "25‑7‑0", fighterB: "Paddy Pimblett", fighterBRecord: "21‑3‑0", weightClass: "Lightweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Kayla Harrison", fighterARecord: "14‑0‑0", fighterB: "Amanda Nunes", fighterBRecord: "22‑5‑0", weightClass: "Women’s Bantamweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Sean O’Malley", fighterARecord: "16‑1‑0", fighterB: "Song Yadong", fighterBRecord: "23‑8‑1", weightClass: "Bantamweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Derrick Lewis", fighterARecord: "27‑12‑0", fighterB: "Waldo Cortes‑Acosta", fighterBRecord: "17‑6‑0", weightClass: "Heavyweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Alexa Grasso", fighterARecord: "16‑4‑1", fighterB: "Rose Namajunas", fighterBRecord: "12‑9‑0", weightClass: "Women’s Flyweight", section: .mainCard)
            ]
        ),

        // UFC 325: Volkanovski vs. Lopes 2 — Jan 31, 2026
        Event(
            id: UUID(),
            name: "UFC 325: Volkanovski vs. Lopes 2",
            fights: [
                // Early Prelims
                Fight(id: UUID(), fighterA: "Junior Tafa", fighterARecord: "6‑1‑0", fighterB: "Billy Elekana", fighterBRecord: "7‑3‑0", weightClass: "Heavyweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Cameron Rowston", fighterARecord: "7‑2‑0", fighterB: "Cody Brundage", fighterBRecord: "14‑8‑0", weightClass: "Middleweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Sangwook Kim", fighterARecord: "10‑3‑0", fighterB: "Dom Mar Fan", fighterBRecord: "9‑4‑0", weightClass: "Lightweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Keiichiro Nakamura", fighterARecord: "10‑2‑0", fighterB: "Sebastian Szalay", fighterBRecord: "13‑5‑0", weightClass: "Featherweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Jacob Malkoun", fighterARecord: "10‑5‑0", fighterB: "Torrez Finney", fighterBRecord: "8‑4‑0", weightClass: "Middleweight", section: .earlyPrelims),

                // Prelims
                Fight(id: UUID(), fighterA: "Serghei Spivac", fighterARecord: "15‑4‑0", fighterB: "Ante Delija", fighterBRecord: "18‑7‑0", weightClass: "Heavyweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Kaan Ofli", fighterARecord: "10‑7‑0", fighterB: "Yi Zha", fighterBRecord: "12‑4‑0", weightClass: "Featherweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Jonathan Micallef", fighterARecord: "13‑3‑0", fighterB: "Oban Elliott", fighterBRecord: "10‑4‑0", weightClass: "Welterweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Sulang Rangbo", fighterARecord: "7‑2‑0", fighterB: "Lawrence Liu", fighterBRecord: "8‑3‑0", weightClass: "Bantamweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Aaron Tau", fighterARecord: "11‑6‑0", fighterB: "Namsrai Batbayar", fighterBRecord: "16‑4‑0", weightClass: "Flyweight", section: .prelims),

                // Main Card
                Fight(id: UUID(), fighterA: "Alexander Volkanovski", fighterARecord: "27‑4‑0", fighterB: "Diego Lopes", fighterBRecord: "27‑7‑0", weightClass: "Featherweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Dan Hooker", fighterARecord: "23‑13‑0", fighterB: "Benoît Saint‑Denis", fighterBRecord: "14‑3‑0", weightClass: "Lightweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Rafael Fiziev", fighterARecord: "12‑4‑0", fighterB: "Mauricio Ruffy", fighterBRecord: "15‑5‑0", weightClass: "Lightweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Tai Tuivasa", fighterARecord: "18‑8‑0", fighterB: "Taila Santos", fighterBRecord: "16‑6‑0", weightClass: "Heavyweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Jimmy Crute", fighterARecord: "13‑5‑0", fighterB: "Dustin Jacoby", fighterBRecord: "16‑7‑0", weightClass: "Light Heavyweight", section: .mainCard)
            ]
        ),

        // UFC 326: Holloway vs. Oliveira 2 — Mar 7, 2026
        Event(
            id: UUID(),
            name: "UFC 326: Holloway vs. Oliveira 2",
            fights: [
                // Early Prelims (plausible lineup)
                Fight(id: UUID(), fighterA: "Cody Garbrandt", fighterARecord: "12‑8‑0", fighterB: "Xiao Long", fighterBRecord: "10‑3‑0", weightClass: "Bantamweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Rafael Tobias", fighterARecord: "14‑9‑0", fighterB: "Diyar Nurgozhay", fighterBRecord: "9‑4‑0", weightClass: "Lightweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Sumudaerji", fighterARecord: "12‑4‑0", fighterB: "Jesus Aguilar", fighterBRecord: "11‑4‑0", weightClass: "Flyweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Mohammad Usman", fighterARecord: "13‑6‑0", fighterB: "Daniel da Silva", fighterBRecord: "10‑3‑0", weightClass: "Middleweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Manny Bermudez", fighterARecord: "16‑5‑0", fighterB: "Miles Johns", fighterBRecord: "14‑5‑0", weightClass: "Bantamweight", section: .earlyPrelims),

                // Prelims (announced/plausible)
                Fight(id: UUID(), fighterA: "Cody Durden", fighterARecord: "13‑7‑0", fighterB: "Nyamjargal Tumendemberel", fighterBRecord: "8‑6‑0", weightClass: "Flyweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Long Xiao", fighterARecord: "10‑3‑0", fighterB: "Cody Garbrandt", fighterBRecord: "12‑8‑0", weightClass: "Bantamweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Rafael Fabiano", fighterARecord: "11‑4‑0", fighterB: "Diyar Nurgozhay", fighterBRecord: "9‑4‑0", weightClass: "Lightweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Sumudaerji", fighterARecord: "12‑4‑0", fighterB: "Oban Elliott", fighterBRecord: "10‑4‑0", weightClass: "Flyweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Jake Matthews", fighterARecord: "20‑9‑0", fighterB: "Tim Means", fighterBRecord: "36‑17‑0", weightClass: "Welterweight", section: .prelims),

                // Main Card
                Fight(id: UUID(), fighterA: "Max Holloway", fighterARecord: "27‑8‑0", fighterB: "Charles Oliveira", fighterBRecord: "36‑11‑0", weightClass: "Lightweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Brian Ortega", fighterARecord: "16‑3‑0", fighterB: "Renato Moicano", fighterBRecord: "14‑6‑0", weightClass: "Lightweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Reinier de Ridder", fighterARecord: "17‑3‑0", fighterB: "Caio Borralho", fighterBRecord: "12‑3‑0", weightClass: "Middleweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Paulo Costa", fighterARecord: "14‑4‑0", fighterB: "Brunno Ferreira", fighterBRecord: "14‑4‑0", weightClass: "Middleweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Dan Ige", fighterARecord: "17‑7‑0", fighterB: "Movsar Evloev", fighterBRecord: "15‑1‑0", weightClass: "Featherweight", section: .mainCard)
            ]
        )
    ]
}

extension MockData {

    // 🏆 UFC Champions + Top 5 Rankings (Dec 2025)
    static let topRankedFighters: [Fighter] = [

        // MARK: - Heavyweight
        Fighter(id: UUID(), name: "Jon Jones", record: "28-1-0", rank: 0, weightClass: "Heavyweight", isChampion: true),
        Fighter(id: UUID(), name: "Tom Aspinall", record: "15-3-0", rank: 1, weightClass: "Heavyweight", isChampion: false),
        Fighter(id: UUID(), name: "Ciryl Gane", record: "13-2-0", rank: 2, weightClass: "Heavyweight", isChampion: false),
        Fighter(id: UUID(), name: "Sergei Pavlovich", record: "18-2-0", rank: 3, weightClass: "Heavyweight", isChampion: false),
        Fighter(id: UUID(), name: "Curtis Blaydes", record: "18-5-0", rank: 4, weightClass: "Heavyweight", isChampion: false),
        Fighter(id: UUID(), name: "Jailton Almeida", record: "22-3-0", rank: 5, weightClass: "Heavyweight", isChampion: false),

        // MARK: - Light Heavyweight
        Fighter(id: UUID(), name: "Alex Pereira", record: "13-3-0", rank: 0, weightClass: "Light Heavyweight", isChampion: true),
        Fighter(id: UUID(), name: "Magomed Ankalaev", record: "20-1-1", rank: 1, weightClass: "Light Heavyweight", isChampion: false),
        Fighter(id: UUID(), name: "Jiri Prochazka", record: "30-5-1", rank: 2, weightClass: "Light Heavyweight", isChampion: false),
        Fighter(id: UUID(), name: "Jamahal Hill", record: "12-2-0", rank: 3, weightClass: "Light Heavyweight", isChampion: false),
        Fighter(id: UUID(), name: "Jan Blachowicz", record: "29-10-1", rank: 4, weightClass: "Light Heavyweight", isChampion: false),
        Fighter(id: UUID(), name: "Anthony Smith", record: "18-9-0", rank: 5, weightClass: "Light Heavyweight", isChampion: false),

        // MARK: - Middleweight
        Fighter(id: UUID(), name: "Khamzat Chimaev", record: "16-0-0", rank: 0, weightClass: "Middleweight", isChampion: true),
        Fighter(id: UUID(), name: "Dricus Du Plessis", record: "22-2-0", rank: 1, weightClass: "Middleweight", isChampion: false),
        Fighter(id: UUID(), name: "Sean Strickland", record: "28-6-0", rank: 2, weightClass: "Middleweight", isChampion: false),
        Fighter(id: UUID(), name: "Israel Adesanya", record: "24-4-0", rank: 3, weightClass: "Middleweight", isChampion: false),
        Fighter(id: UUID(), name: "Robert Whittaker", record: "26-7-0", rank: 4, weightClass: "Middleweight", isChampion: false),
        Fighter(id: UUID(), name: "Marvin Vettori", record: "19-7-1", rank: 5, weightClass: "Middleweight", isChampion: false),

        // MARK: - Welterweight
        Fighter(id: UUID(), name: "Islam Makhachev", record: "28-1-0", rank: 0, weightClass: "Welterweight", isChampion: true),
        Fighter(id: UUID(), name: "Belal Muhammad", record: "23-3-0", rank: 1, weightClass: "Welterweight", isChampion: false),
        Fighter(id: UUID(), name: "Shavkat Rakhmonov", record: "18-0-0", rank: 2, weightClass: "Welterweight", isChampion: false),
        Fighter(id: UUID(), name: "Kamaru Usman", record: "20-4-0", rank: 3, weightClass: "Welterweight", isChampion: false),
        Fighter(id: UUID(), name: "Colby Covington", record: "17-4-0", rank: 4, weightClass: "Welterweight", isChampion: false),
        Fighter(id: UUID(), name: "Jack Della Maddalena", record: "18-2-0", rank: 5, weightClass: "Welterweight", isChampion: false),

        // MARK: - Lightweight
        Fighter(id: UUID(), name: "Ilia Topuria", record: "17-0-0", rank: 0, weightClass: "Lightweight", isChampion: true),
        Fighter(id: UUID(), name: "Arman Tsarukyan", record: "22-3-0", rank: 1, weightClass: "Lightweight", isChampion: false),
        Fighter(id: UUID(), name: "Charles Oliveira", record: "35-10-0", rank: 2, weightClass: "Lightweight", isChampion: false),
        Fighter(id: UUID(), name: "Mateusz Gamrot", record: "21-5-0", rank: 3, weightClass: "Lightweight", isChampion: false),
        Fighter(id: UUID(), name: "Rafael Fiziev", record: "12-4-0", rank: 4, weightClass: "Lightweight", isChampion: false),
        Fighter(id: UUID(), name: "Beneil Dariush", record: "23-6-0", rank: 5, weightClass: "Lightweight", isChampion: false),

        // MARK: - Featherweight
        Fighter(id: UUID(), name: "Alexander Volkanovski", record: "27-4-0", rank: 0, weightClass: "Featherweight", isChampion: true),
        Fighter(id: UUID(), name: "Ilia Topuria", record: "17-0-0", rank: 1, weightClass: "Featherweight", isChampion: false),
        Fighter(id: UUID(), name: "Max Holloway", record: "27-7-0", rank: 2, weightClass: "Featherweight", isChampion: false),
        Fighter(id: UUID(), name: "Brian Ortega", record: "16-3-0", rank: 3, weightClass: "Featherweight", isChampion: false),
        Fighter(id: UUID(), name: "Yair Rodriguez", record: "19-5-0", rank: 4, weightClass: "Featherweight", isChampion: false),
        Fighter(id: UUID(), name: "Calvin Kattar", record: "22-6-0", rank: 5, weightClass: "Featherweight", isChampion: false),

        // MARK: - Bantamweight
        Fighter(id: UUID(), name: "Petr Yan", record: "20-5-0", rank: 0, weightClass: "Bantamweight", isChampion: true),
        Fighter(id: UUID(), name: "Merab Dvalishvili", record: "21-5-0", rank: 1, weightClass: "Bantamweight", isChampion: false),
        Fighter(id: UUID(), name: "Sean O'Malley", record: "18-2-0", rank: 2, weightClass: "Bantamweight", isChampion: false),
        Fighter(id: UUID(), name: "Cory Sandhagen", record: "17-4-0", rank: 3, weightClass: "Bantamweight", isChampion: false),
        Fighter(id: UUID(), name: "Aljamain Sterling", record: "23-5-0", rank: 4, weightClass: "Bantamweight", isChampion: false),
        Fighter(id: UUID(), name: "Ricky Simon", record: "19-6-0", rank: 5, weightClass: "Bantamweight", isChampion: false),

        // MARK: - Flyweight
        Fighter(id: UUID(), name: "Joshua Van", record: "15-2-0", rank: 0, weightClass: "Flyweight", isChampion: true),
        Fighter(id: UUID(), name: "Brandon Moreno", record: "21-7-2", rank: 1, weightClass: "Flyweight", isChampion: false),
        Fighter(id: UUID(), name: "Brandon Royval", record: "16-8-0", rank: 2, weightClass: "Flyweight", isChampion: false),
        Fighter(id: UUID(), name: "Amir Albazi", record: "17-1-0", rank: 3, weightClass: "Flyweight", isChampion: false),
        Fighter(id: UUID(), name: "Alexandre Pantoja", record: "30-5-0", rank: 4, weightClass: "Flyweight", isChampion: false),
        Fighter(id: UUID(), name: "Kai Kara-France", record: "24-11-0", rank: 5, weightClass: "Flyweight", isChampion: false)
    ]
}
