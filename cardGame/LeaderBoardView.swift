import SwiftUI

struct LeaderBoardView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var players = [Player(name: "Luan", score: 10), Player(name: "Billie", score: 100), Player(name: "Chim", score: 40)]
    
    var body: some View {
        GeometryReader { screen in
            NavigationView {
                ZStack {
                    Image("landing").resizable().edgesIgnoringSafeArea(.all)
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .background(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .bottom, endPoint: .top))
                        .edgesIgnoringSafeArea(.all)
                    
                    ScrollView(.vertical){
                        VStack (alignment: .center, spacing :10) {
                            ForEach(players) {player in
                                LeaderBoardCard(player: player)
                            }
                            ForEach(players) {player in
                                LeaderBoardCard(player: player)
                            }
                            ForEach(players) {player in
                                LeaderBoardCard(player: player)
                            }
                        }
                        .padding(.bottom, screen.size.height/10)
                        .foregroundColor(.white)
                    }
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarBackButtonHidden(false)
        }
    }
}

struct LeaderBoardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
