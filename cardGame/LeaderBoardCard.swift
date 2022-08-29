
import SwiftUI
struct LeaderBoardCard: View {
    var player: Player
    var body: some View {
        HStack {
            Text("\(player.name)".uppercased())
                .font(.system(size: 24, weight: .bold, design: .rounded))
                .frame(alignment: .leading)
                .padding()
            Spacer()
            Text("\(player.score)".uppercased())
                .font(.system(size: 24, weight: .bold, design: .rounded))
                .frame(alignment: .trailing)
                .padding()
        }
        .font(.system(.headline, design: .rounded))
        .frame(width:300, height: 50).background(Color.orange)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 5, style: .continuous))
    }
}

struct LeaderBoardCard_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardCard(player: Player(name: "Luan", score: 10))
    }
}
