import SwiftUI

struct MenuView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var player: String
    
    var body: some View {
        GeometryReader { screen in
            NavigationView {
                ZStack {
                    Image("landing").resizable().edgesIgnoringSafeArea(.all)
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .background(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .bottom, endPoint: .top))
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack (alignment: .center, spacing :10) {
                        Text("Lulu an loz").font(.title).fontWeight(.heavy)
                        Text("Welcome Player \(player)")
                            .lineLimit(1)
                            .multilineTextAlignment(.center)
                        
                        Button(action: {}) {
                            Text("Play Game").padding()
                        }
                        .font(.system(.headline, design: .rounded))
                        .frame(width:300, height: 50).background(Color.orange)
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 5, style: .continuous))
                        
                        Button(action: {}) {
                            NavigationLink(destination: LeaderBoardView()){
                                Text("Leaderboard").padding()
                            }
                        }
                        .font(.system(.headline, design: .rounded))
                        .frame(width:300, height: 50).background(Color.orange)
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 5, style: .continuous))
                        
                        Button(action: {}) {
                            NavigationLink(destination: HowToPlayView()){
                                Text("How To Play").padding()
                            }
                        }
                        .font(.system(.headline, design: .rounded))
                        .frame(width:300, height: 50).background(Color.orange)
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 5, style: .continuous))
                        
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Text("Back").padding()
                        }
                        .font(.system(.headline, design: .rounded))
                        .frame(width:300, height: 50).background(Color.orange)
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 5, style: .continuous))
                        
                    }
                    .padding(.bottom, screen.size.height/10)
                    .foregroundColor(.white)
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct CMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(player: "Luan")
            .previewInterfaceOrientation(.landscapeRight)
    }
}
