import SwiftUI

// MARK: - Main Fighters View
struct FightersView: View {
    @State private var searchText: String = ""

    private var fightersByWeightClass: [String: [Fighter]] {
        Dictionary(grouping: MockData.topRankedFighters) { $0.weightClass }
            .mapValues { fighters in
                fighters.sorted { $0.rank < $1.rank }
            }
    }

    private let weightClassOrder: [String] = [
        "Heavyweight",
        "Light Heavyweight",
        "Middleweight",
        "Welterweight",
        "Lightweight",
        "Featherweight",
        "Bantamweight",
        "Flyweight"
    ]

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Fixed header
                VStack(spacing: 8) {
                    Text("Top Ranked Fighters")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Search Fighters")
                            .foregroundColor(.gray)
                        
                        TextField("Search by name...", text: $searchText)
                            .padding(10)
                            .background(Color(hex: "1E1E1E"))
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                .padding(.top, 70)
                .padding(.horizontal)
                .padding(.bottom, 8)
                .background(Color(hex: "292929"))
                .shadow(radius: 3)
                .zIndex(1)

                // Scrollable content
                ScrollView {
                    VStack(spacing: 24) {
                        ForEach(weightClassOrder, id: \.self) { weightClass in
                            if let fighters = fightersByWeightClass[weightClass] {
                                NavigationLink(
                                    destination: WeightClassDetailView(weightClass: weightClass, fighters: fighters)
                                ) {
                                    WeightClassCardView(
                                        title: weightClass,
                                        topFighters: Array(fighters.prefix(6)) // champ + top 5
                                    )
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                    }
                    .padding(.top, 16) // <-- add a little space between search bar and first card
                    .padding(.bottom)
                }
                .background(Color(hex: "292929"))
            }
            .edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
        }

    }
}

struct WeightClassCardView: View {
    let title: String
    let topFighters: [Fighter]

    private var champion: Fighter? {
        topFighters.first(where: { $0.isChampion })
    }

    private var rankedFighters: [Fighter] {
        topFighters.filter { !$0.isChampion }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Card header
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.horizontal)

            VStack(spacing: 8) {
                // Champion row
                if let champ = champion {
                    NavigationLink(destination: FighterStats(fighter: champ)) {
                        HStack {
                            Text("C")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 28, height: 28)
                                .background(Color(hex: "edd24c"))
                                .cornerRadius(6)

                            VStack(alignment: .leading) {
                                Text(champ.name)
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                Text(champ.record)
                                    .foregroundColor(.gray)
                                    .font(.subheadline)
                            }

                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                    .buttonStyle(PlainButtonStyle())
                }

                // Ranked fighters (#1-#5)
                ForEach(rankedFighters) { fighter in
                    NavigationLink(destination: FighterStats(fighter: fighter)) {
                        HStack {
                            Text("\(fighter.rank)")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 24, height: 24)
                                .background(Color.black)
                                .cornerRadius(4)

                            VStack(alignment: .leading) {
                                Text(fighter.name)
                                    .foregroundColor(.white)
                                Text(fighter.record)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }

                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .background(
                // Overlay a NavigationLink on empty space to go to top 15 page
                NavigationLink(destination: WeightClassDetailView(weightClass: title, fighters: topFighters.prefix(15).map { $0 })) {
                    EmptyView()
                }
                .buttonStyle(PlainButtonStyle())
            )
        }
        .padding(.vertical)
        .background(Color(hex: "1E1E1E"))
        .cornerRadius(12)
        .padding(.horizontal)
    }
}


// MARK: - Weight Class Detail (Top 15)
struct WeightClassDetailView: View {
    let weightClass: String
    let fighters: [Fighter]

    var body: some View {
        ZStack {
            Color(hex: "292929").ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text(weightClass)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .padding(.top)

                    ForEach(fighters.prefix(15)) { fighter in
                        NavigationLink(destination: FighterStats(fighter: fighter)) {
                            HStack {
                                Text(fighter.isChampion ? "C" : "\(fighter.rank)")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(width: fighter.isChampion ? 28 : 30, height: fighter.isChampion ? 28 : 30)
                                    .background(fighter.isChampion ? Color(hex: "edd24c") : Color.black)
                                    .cornerRadius(6)

                                VStack(alignment: .leading) {
                                    Text(fighter.name)
                                        .foregroundColor(.white)
                                        .font(.headline)
                                    Text(fighter.record)
                                        .foregroundColor(.gray)
                                        .font(.subheadline)
                                }

                                Spacer()
                            }
                            .padding()
                            .background(Color(hex: "1E1E1E"))
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding(.vertical)
            }
        }
    }
}

// MARK: - Fighter Stats Page
struct FighterStats: View {
    let fighter: Fighter

    var body: some View {
        ZStack {
            Color(hex: "292929").ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text(fighter.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top)
                        .padding(.horizontal)

                    Text("Record: \(fighter.record)")
                        .foregroundColor(.gray)
                        .padding(.horizontal)

                    Divider().background(Color.white)

                    VStack(alignment: .leading, spacing: 8) {
                        Text("Basic Stats")
                            .font(.title2)
                            .foregroundColor(.white)
                        Text("Height: 6'0\"")
                            .foregroundColor(.gray)
                        Text("Reach: 75\"")
                            .foregroundColor(.gray)
                        Text("Weight: \(fighter.weightClass)")
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal)

                    Divider().background(Color.white)

                    VStack(alignment: .leading, spacing: 8) {
                        Text("Advanced Metrics")
                            .font(.title2)
                            .foregroundColor(.white)
                        Text("Striking Accuracy: 55%")
                            .foregroundColor(.gray)
                        Text("Takedown Defense: 78%")
                            .foregroundColor(.gray)
                        Text("Submission Average: 1.2")
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal)

                    Divider().background(Color.white)

                    VStack(alignment: .leading, spacing: 8) {
                        Text("Previous Fights")
                            .font(.title2)
                            .foregroundColor(.white)
                        Text("vs John Doe: Win by KO")
                            .foregroundColor(.gray)
                        Text("vs Jane Smith: Loss by Decision")
                            .foregroundColor(.gray)
                        Text("vs Max Fighter: Win by Submission")
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom)
            }
        }
    }
}

// MARK: - Preview
struct FightersView_Previews: PreviewProvider {
    static var previews: some View {
        FightersView()
    }
}
