import SwiftUI

// MARK: - Main Fighters View
struct FightersView: View {
    @State private var searchText: String = ""
    
    // Group fighters by weight class
    private var fightersByWeightClass: [String: [Fighter]] {
        Dictionary(grouping: MockData.topRankedFighters) { $0.weightClass }
            .mapValues { fighters in
                fighters.sorted { $0.rank < $1.rank }
            }
    }

    // Weight class order
    private let weightClassOrder: [String] = [
        "Heavyweight", "Light Heavyweight", "Middleweight", "Welterweight",
        "Lightweight", "Featherweight", "Bantamweight", "Flyweight"
    ]
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ZStack(alignment: .top) {
                    Color(hex: "292929").ignoresSafeArea()
                    
                    // Scrollable content
                    ScrollView {
                        VStack(spacing: 24) {
                            // Spacer equal to header + safe area
                            Color.clear
                                .frame(height: 16 + 40 + 8 + 44 + geometry.safeAreaInsets.top)
                            
                            ForEach(weightClassOrder, id: \.self) { weightClass in
                                if let fighters = fightersByWeightClass[weightClass] {
                                    NavigationLink(
                                        destination: WeightClassDetailView(weightClass: weightClass, fighters: fighters)
                                    ) {
                                        WeightClassCardView(
                                            title: weightClass,
                                            topFighters: Array(fighters.prefix(5))
                                        )
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                }
                            }
                        }
                        .padding(.bottom)
                    }
                    
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
                    .padding(.top, geometry.safeAreaInsets.top)
                    .padding(.horizontal)
                    .padding(.bottom, 8)
                    .background(Color(hex: "292929"))
                    .shadow(radius: 3)
                    .zIndex(1)
                }
                .edgesIgnoringSafeArea(.top)
            }
            .navigationBarHidden(true)
        }
    }
}

// MARK: - Weight Class Card (Top 5 preview)
struct WeightClassCardView: View {
    let title: String
    let topFighters: [Fighter]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.horizontal)
            
            ForEach(topFighters) { fighter in
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
        }
        .padding(.vertical)
        .background(Color(hex: "1E1E1E"))
        .cornerRadius(12)
        .padding(.horizontal)
    }
}

// MARK: - Full Weight Class Detail (Top 15 vertical list)
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
                        HStack {
                            Text("\(fighter.rank)")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)
                                .background(Color.black)
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
                }
                .padding(.vertical)
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
