import SwiftUI

struct HowToPlayView: View {
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
                        
                        Text("asdasdasdasdasdasdasaasdasdasdasdasdas\ndasdasdaddsssssssssssdasdasdasdasdasdasdasdaddss")
                            .font(.system(.headline, design: .rounded))
                            .foregroundColor(.orange)
                            .frame(width: 300)
                        
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                            print("asdasdasdasda")
                        }) {
                            Text("Menu".uppercased())
                        }
                        .font(.system(.headline, design: .rounded))
                        .frame(width:300, height: 50).background(Color.orange)
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 5, style: .continuous))
                    }
                    .padding()
                    .frame(width: screen.size.width/1.5, height: screen.size.height/1.1)
                    .foregroundColor(Color.black.opacity(0.8))
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 5, style: .continuous))
                }
            }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarBackButtonHidden(true)
        .accentColor(.pink)
    }
    
}




