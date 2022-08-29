import SwiftUI

struct WelcomeView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var player: String = ""
    
    var body: some View {
        GeometryReader {screen in
            NavigationView {
                ZStack {
                    Image("landing").resizable().edgesIgnoringSafeArea(.all)
                    Rectangle()
                        .foregroundColor(.clear)
                        .background(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .bottom, endPoint: .top))
                        .edgesIgnoringSafeArea(.all)
                    VStack{
                        Text("Welcome to Bo Binh")
                            .font(.system(.title, design: .rounded))
                            .foregroundColor(.orange)
                            .multilineTextAlignment(.center)
                        
                        TextField("Player Name", text: $player)
                            .disableAutocorrection(true)
                            .font(.system(.headline, design: .rounded))
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(LinearGradient(colors: [Color.white.opacity(0.5),Color.orange.opacity(0.6)], startPoint: .top, endPoint: .leading))
                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 5, style: .continuous))
                        
                        Button(action: {}) {
                            NavigationLink(destination: MenuView(player: $player.wrappedValue.uppercased())){
                                Text("Login".uppercased())
                            }
                            .font(.system(.headline, design: .rounded))
                            .frame(width:300, height: 50).background(Color.orange)
                            .disabled($player.wrappedValue.isEmpty)
                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 5, style: .continuous))
                        }
                        
                    }
                    .padding()
                    .frame(width: screen.size.width/1.5, height: screen.size.height/1.2)
                    .foregroundColor(Color.black.opacity(0.8))
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 5, style: .continuous))
                }
                
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarBackButtonHidden(true)
            .accentColor(.orange)
        }
    }
}


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().preferredColorScheme(.light)
    }
}



