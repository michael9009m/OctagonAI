import SwiftUI

struct EventDetailView: View {
    let event: Event

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                Text(event.name)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.top, 20)

                // Section order: main card -> prelims -> early prelims
                sectionView(title: "Main Card", section: .mainCard)
                sectionView(title: "Prelims", section: .prelims)
                sectionView(title: "Early Prelims", section: .earlyPrelims)
            }
            .padding()
        }
        .background(Color(hex: "212121"))//background for fight card when clicked
    }

    private func sectionView(title: String, section: CardSection) -> some View {
        let fights = event.fights.filter { $0.section == section }

        return VStack(alignment: .center, spacing: 12) {
            Text(title)
                .font(.title2)
                .foregroundColor(.white)

            ForEach(fights) { fight in
                VStack {
                    Text("\(fight.fighterA) vs \(fight.fighterB)")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    Text("\(fight.fighterARecord) vs \(fight.fighterBRecord)")
                        .foregroundColor(.gray)
                        .font(.footnote)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(hex: "3D3D3D")) // background of each fight matchup in each fight card
                        .shadow(radius: 4)
                )
            }
        }
    }
}
