import SwiftUI

struct FightCardView: View {
    let event: Event

    var body: some View {
        VStack(spacing: 16) {
            Text(event.name)
                .font(.title2)
                .foregroundColor(.white)
                .fontWeight(.bold)

            // Filter main card fights and sort to show main & co-main first
            let mainFights = event.fights.filter { $0.section == .mainCard }

            ForEach(mainFights.prefix(2)) { fight in
                VStack(spacing: 4) {
                    Text("\(fight.fighterA) vs \(fight.fighterB)")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    Text("\(fight.fighterARecord) vs \(fight.fighterBRecord)")
                        .foregroundColor(.gray)
                        .font(.footnote)
                    Text(fight.weightClass)
                        .foregroundColor(.white)
                        .font(.footnote)
                        .italic()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(hex: "162657")) // background of each fight matchup
                        .shadow(radius: 4)
                )
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(hex: "3D3D3D")) // Background for each cover of each fight card
                .shadow(radius: 8)
        )
    }
}
