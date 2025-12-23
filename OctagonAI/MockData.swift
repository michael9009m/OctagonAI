import Foundation
import SwiftUI

struct MockData {
    static let events: [Event] = [
        // Existing events
        Event(
            id: UUID(),
            name: "UFC Apex 92",
            fights: [
                // Early Prelims (5 fights)
                Fight(id: UUID(), fighterA: "Tommy Jenkins", fighterARecord: "8-2-0", fighterB: "Carlos Mendes", fighterBRecord: "7-3-0", weightClass: "Featherweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Rico Alvarez", fighterARecord: "5-0-0", fighterB: "Derek Shaw", fighterBRecord: "4-2-1", weightClass: "Featherweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Evan Cross", fighterARecord: "6-1-0", fighterB: "Troy Sanders", fighterBRecord: "5-2-0", weightClass: "Lightweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Liam Hall", fighterARecord: "7-1-1", fighterB: "Omar White", fighterBRecord: "6-3-0", weightClass: "Lightweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Noel Vargas", fighterARecord: "4-0-0", fighterB: "Shawn Patel", fighterBRecord: "3-2-1", weightClass: "Bantamweight", section: .earlyPrelims),

                // Prelims (5 fights)
                Fight(id: UUID(), fighterA: "Luis Ortega", fighterARecord: "12-1-0", fighterB: "Devon King", fighterBRecord: "10-4-0", weightClass: "Welterweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Andre Cole", fighterARecord: "9-3-0", fighterB: "Victor Rios", fighterBRecord: "8-2-0", weightClass: "Welterweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Blake Foster", fighterARecord: "8-0-0", fighterB: "Andre Silva", fighterBRecord: "7-1-0", weightClass: "Middleweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Jordan Lee", fighterARecord: "10-2-0", fighterB: "Isaac Cruz", fighterBRecord: "9-4-0", weightClass: "Middleweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Ethan King", fighterARecord: "6-1-0", fighterB: "Mike Torres", fighterBRecord: "5-3-0", weightClass: "Lightweight", section: .prelims),

                // Main Card (5 fights)
                Fight(id: UUID(), fighterA: "Jake Reynolds", fighterARecord: "17-3-0", fighterB: "Marcus Vale", fighterBRecord: "14-2-1", weightClass: "Lightweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Noah Brooks", fighterARecord: "11-2-0", fighterB: "Samir Haddad", fighterBRecord: "13-3-0", weightClass: "Welterweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Tyler Nash", fighterARecord: "15-4-0", fighterB: "Ryan Cruz", fighterBRecord: "12-5-0", weightClass: "Middleweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Mark Evans", fighterARecord: "9-1-0", fighterB: "Alex Diaz", fighterBRecord: "10-2-0", weightClass: "Welterweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Caleb Stone", fighterARecord: "13-3-0", fighterB: "Leo Ramos", fighterBRecord: "11-4-0", weightClass: "Lightweight", section: .mainCard)
            ]
        ),

        Event(
            id: UUID(),
            name: "UFC Night Chicago",
            fights: [
                // Early Prelims (5 fights)
                Fight(id: UUID(), fighterA: "Ethan King", fighterARecord: "6-1-0", fighterB: "Mike Torres", fighterBRecord: "5-3-0", weightClass: "Lightweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Liam Scott", fighterARecord: "7-2-0", fighterB: "Nate Howard", fighterBRecord: "6-1-0", weightClass: "Featherweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Zane Clark", fighterARecord: "4-0-0", fighterB: "Damon Lee", fighterBRecord: "3-1-0", weightClass: "Bantamweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Oscar Mills", fighterARecord: "5-1-0", fighterB: "Eli Bennett", fighterBRecord: "4-2-0", weightClass: "Lightweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Troy Foster", fighterARecord: "6-2-0", fighterB: "Ivan Grant", fighterBRecord: "5-3-0", weightClass: "Welterweight", section: .earlyPrelims),

                // Prelims (5 fights)
                Fight(id: UUID(), fighterA: "Jordan Lee", fighterARecord: "10-2-0", fighterB: "Isaac Cruz", fighterBRecord: "9-4-0", weightClass: "Middleweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Blake Foster", fighterARecord: "8-0-0", fighterB: "Andre Silva", fighterBRecord: "7-1-0", weightClass: "Welterweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Mason Reed", fighterARecord: "9-1-0", fighterB: "Tyson Boyd", fighterBRecord: "8-2-0", weightClass: "Lightweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Cameron Hart", fighterARecord: "7-1-0", fighterB: "Leo Black", fighterBRecord: "6-3-0", weightClass: "Middleweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Jared Cole", fighterARecord: "5-0-0", fighterB: "Eli Turner", fighterBRecord: "4-1-0", weightClass: "Bantamweight", section: .prelims),

                // Main Card (5 fights)
                Fight(id: UUID(), fighterA: "Andre Cole", fighterARecord: "19-5-0", fighterB: "Victor Rios", fighterBRecord: "16-6-0", weightClass: "Welterweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Noah Brooks", fighterARecord: "11-2-0", fighterB: "Samir Haddad", fighterBRecord: "13-3-0", weightClass: "Lightweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Tyler Nash", fighterARecord: "15-4-0", fighterB: "Ryan Cruz", fighterBRecord: "12-5-0", weightClass: "Middleweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Mark Evans", fighterARecord: "9-1-0", fighterB: "Alex Diaz", fighterBRecord: "10-2-0", weightClass: "Welterweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Caleb Stone", fighterARecord: "13-3-0", fighterB: "Leo Ramos", fighterBRecord: "11-4-0", weightClass: "Lightweight", section: .mainCard)
            ]
        ),

        // New Event 1
        Event(
            id: UUID(),
            name: "UFC Vegas 56",
            fights: [
                // Early Prelims (5 fights)
                Fight(id: UUID(), fighterA: "Ryan Frost", fighterARecord: "5-1-0", fighterB: "Kane Patel", fighterBRecord: "4-2-0", weightClass: "Featherweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Owen Black", fighterARecord: "6-0-0", fighterB: "Landon Cruz", fighterBRecord: "5-1-0", weightClass: "Lightweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Derek Lane", fighterARecord: "7-2-0", fighterB: "Zack Moore", fighterBRecord: "6-1-0", weightClass: "Bantamweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Colin Reed", fighterARecord: "4-1-0", fighterB: "Eli Moss", fighterBRecord: "3-2-0", weightClass: "Lightweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Nate King", fighterARecord: "6-2-0", fighterB: "Jake Blair", fighterBRecord: "5-3-0", weightClass: "Welterweight", section: .earlyPrelims),

                // Prelims (5 fights)
                Fight(id: UUID(), fighterA: "Lucas Ford", fighterARecord: "10-2-0", fighterB: "Cole Price", fighterBRecord: "9-3-0", weightClass: "Middleweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Ethan Ward", fighterARecord: "8-1-0", fighterB: "Mason Black", fighterBRecord: "7-2-0", weightClass: "Welterweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Blake Kane", fighterARecord: "9-0-0", fighterB: "Tyson Grant", fighterBRecord: "8-1-0", weightClass: "Lightweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Cody Lane", fighterARecord: "6-1-0", fighterB: "Leo Hart", fighterBRecord: "5-2-0", weightClass: "Middleweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Jared Moss", fighterARecord: "5-0-0", fighterB: "Eli Turner", fighterBRecord: "4-1-0", weightClass: "Bantamweight", section: .prelims),

                // Main Card (5 fights)
                Fight(id: UUID(), fighterA: "Jake Frost", fighterARecord: "18-3-0", fighterB: "Ryan Cole", fighterBRecord: "15-4-0", weightClass: "Lightweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Noah Evans", fighterARecord: "12-2-0", fighterB: "Samir Black", fighterBRecord: "14-3-0", weightClass: "Welterweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Tyler Stone", fighterARecord: "16-4-0", fighterB: "Ryan Diaz", fighterBRecord: "13-5-0", weightClass: "Middleweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Mark Blair", fighterARecord: "10-1-0", fighterB: "Alex Moss", fighterBRecord: "11-2-0", weightClass: "Welterweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Caleb Reed", fighterARecord: "14-3-0", fighterB: "Leo Grant", fighterBRecord: "12-4-0", weightClass: "Lightweight", section: .mainCard)
            ]
        ),

        // New Event 2
        Event(
            id: UUID(),
            name: "UFC London 12",
            fights: [
                // Early Prelims (5 fights)
                Fight(id: UUID(), fighterA: "Evan Drake", fighterARecord: "6-0-0", fighterB: "Liam Hart", fighterBRecord: "5-1-0", weightClass: "Featherweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Owen King", fighterARecord: "7-1-0", fighterB: "Nate Moss", fighterBRecord: "6-2-0", weightClass: "Lightweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Derek Stone", fighterARecord: "5-0-0", fighterB: "Zane Turner", fighterBRecord: "4-1-0", weightClass: "Bantamweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Colin Hart", fighterARecord: "6-1-0", fighterB: "Eli Grant", fighterBRecord: "5-2-0", weightClass: "Lightweight", section: .earlyPrelims),
                Fight(id: UUID(), fighterA: "Nate Lane", fighterARecord: "4-0-0", fighterB: "Jake Turner", fighterBRecord: "3-2-0", weightClass: "Welterweight", section: .earlyPrelims),

                // Prelims (5 fights)
                Fight(id: UUID(), fighterA: "Lucas Drake", fighterARecord: "9-1-0", fighterB: "Cole Grant", fighterBRecord: "8-2-0", weightClass: "Middleweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Ethan Moss", fighterARecord: "7-0-0", fighterB: "Mason Hart", fighterBRecord: "6-1-0", weightClass: "Welterweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Blake Turner", fighterARecord: "8-0-0", fighterB: "Tyson Drake", fighterBRecord: "7-0-0", weightClass: "Lightweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Cody Grant", fighterARecord: "6-1-0", fighterB: "Leo King", fighterBRecord: "5-2-0", weightClass: "Middleweight", section: .prelims),
                Fight(id: UUID(), fighterA: "Jared Hart", fighterARecord: "5-0-0", fighterB: "Eli Drake", fighterBRecord: "4-1-0", weightClass: "Bantamweight", section: .prelims),

                // Main Card (5 fights)
                Fight(id: UUID(), fighterA: "Jake Drake", fighterARecord: "17-3-0", fighterB: "Ryan Grant", fighterBRecord: "14-2-1", weightClass: "Lightweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Noah Hart", fighterARecord: "11-2-0", fighterB: "Samir Drake", fighterBRecord: "13-3-0", weightClass: "Welterweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Tyler Grant", fighterARecord: "15-4-0", fighterB: "Ryan King", fighterBRecord: "12-5-0", weightClass: "Middleweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Mark Turner", fighterARecord: "9-1-0", fighterB: "Alex Drake", fighterBRecord: "10-2-0", weightClass: "Welterweight", section: .mainCard),
                Fight(id: UUID(), fighterA: "Caleb Hart", fighterARecord: "13-3-0", fighterB: "Leo Moss", fighterBRecord: "11-4-0", weightClass: "Lightweight", section: .mainCard)
            ]
        )
    ]
}


extension MockData {

    // 📌 Top ranked fighters per weight class (as of Dec 15, 2025)
    static let topRankedFighters: [Fighter] = [

        // Heavyweight
        Fighter(id: UUID(), name: "Jon Jones", record: "27-1-0", weightClass: "Heavyweight", rank: 1),
        Fighter(id: UUID(), name: "Tom Aspinall", record: "14-3-0", weightClass: "Heavyweight", rank: 2),
        Fighter(id: UUID(), name: "Sergei Pavlovich", record: "18-2-0", weightClass: "Heavyweight", rank: 3),
        Fighter(id: UUID(), name: "Ciryl Gane", record: "12-2-0", weightClass: "Heavyweight", rank: 4),
        Fighter(id: UUID(), name: "Curtis Blaydes", record: "17-4-0", weightClass: "Heavyweight", rank: 5),

        // Light Heavyweight
        Fighter(id: UUID(), name: "Alex Pereira", record: "10-2-0", weightClass: "Light Heavyweight", rank: 1),
        Fighter(id: UUID(), name: "Magomed Ankalaev", record: "19-1-1", weightClass: "Light Heavyweight", rank: 2),
        Fighter(id: UUID(), name: "Jiri Prochazka", record: "30-5-1", weightClass: "Light Heavyweight", rank: 3),
        Fighter(id: UUID(), name: "Jamahal Hill", record: "12-2-0", weightClass: "Light Heavyweight", rank: 4),
        Fighter(id: UUID(), name: "Jan Blachowicz", record: "29-10-1", weightClass: "Light Heavyweight", rank: 5),

        // Middleweight
        Fighter(id: UUID(), name: "Dricus Du Plessis", record: "22-2-0", weightClass: "Middleweight", rank: 1),
        Fighter(id: UUID(), name: "Sean Strickland", record: "28-6-0", weightClass: "Middleweight", rank: 2),
        Fighter(id: UUID(), name: "Israel Adesanya", record: "24-4-0", weightClass: "Middleweight", rank: 3),
        Fighter(id: UUID(), name: "Robert Whittaker", record: "26-7-0", weightClass: "Middleweight", rank: 4),
        Fighter(id: UUID(), name: "Marvin Vettori", record: "19-7-1", weightClass: "Middleweight", rank: 5),

        // Welterweight
        Fighter(id: UUID(), name: "Leon Edwards", record: "22-4-0", weightClass: "Welterweight", rank: 1),
        Fighter(id: UUID(), name: "Belal Muhammad", record: "23-3-0", weightClass: "Welterweight", rank: 2),
        Fighter(id: UUID(), name: "Shavkat Rakhmonov", record: "18-0-0", weightClass: "Welterweight", rank: 3),
        Fighter(id: UUID(), name: "Kamaru Usman", record: "20-4-0", weightClass: "Welterweight", rank: 4),
        Fighter(id: UUID(), name: "Colby Covington", record: "17-4-0", weightClass: "Welterweight", rank: 5),

        // Lightweight
        Fighter(id: UUID(), name: "Islam Makhachev", record: "26-1-0", weightClass: "Lightweight", rank: 1),
        Fighter(id: UUID(), name: "Arman Tsarukyan", record: "22-3-0", weightClass: "Lightweight", rank: 2),
        Fighter(id: UUID(), name: "Charles Oliveira", record: "34-10-0", weightClass: "Lightweight", rank: 3),
        Fighter(id: UUID(), name: "Dustin Poirier", record: "30-9-0", weightClass: "Lightweight", rank: 4),
        Fighter(id: UUID(), name: "Justin Gaethje", record: "25-5-0", weightClass: "Lightweight", rank: 5),

        // Featherweight
        Fighter(id: UUID(), name: "Ilia Topuria", record: "16-0-0", weightClass: "Featherweight", rank: 1),
        Fighter(id: UUID(), name: "Alexander Volkanovski", record: "26-4-0", weightClass: "Featherweight", rank: 2),
        Fighter(id: UUID(), name: "Max Holloway", record: "25-7-0", weightClass: "Featherweight", rank: 3),
        Fighter(id: UUID(), name: "Brian Ortega", record: "16-3-0", weightClass: "Featherweight", rank: 4),
        Fighter(id: UUID(), name: "Yair Rodriguez", record: "19-5-0", weightClass: "Featherweight", rank: 5),

        // Bantamweight
        Fighter(id: UUID(), name: "Sean O'Malley", record: "18-2-0", weightClass: "Bantamweight", rank: 1),
        Fighter(id: UUID(), name: "Merab Dvalishvili", record: "18-4-0", weightClass: "Bantamweight", rank: 2),
        Fighter(id: UUID(), name: "Cory Sandhagen", record: "17-4-0", weightClass: "Bantamweight", rank: 3),
        Fighter(id: UUID(), name: "Petr Yan", record: "16-6-0", weightClass: "Bantamweight", rank: 4),
        Fighter(id: UUID(), name: "Aljamain Sterling", record: "23-5-0", weightClass: "Bantamweight", rank: 5),

        // Flyweight
        Fighter(id: UUID(), name: "Alexandre Pantoja", record: "28-5-0", weightClass: "Flyweight", rank: 1),
        Fighter(id: UUID(), name: "Brandon Moreno", record: "21-7-2", weightClass: "Flyweight", rank: 2),
        Fighter(id: UUID(), name: "Brandon Royval", record: "16-7-0", weightClass: "Flyweight", rank: 3),
        Fighter(id: UUID(), name: "Amir Albazi", record: "17-1-0", weightClass: "Flyweight", rank: 4),
        Fighter(id: UUID(), name: "Kai Kara-France", record: "24-11-0", weightClass: "Flyweight", rank: 5)
    ]
}
