//Hello,world!
import SwiftUI

struct ContentView: View {
    
    @State var isTurkish: Bool = false
    var body: some View {
        VStack{
            
            if isTurkish{
                Text("Merhaba dünya!")
                
            } else {
                Text("Hello, world!")
                
            }
            
            Button {
                
                self.isTurkish.toggle()
                
            } label: {
                Text(isTurkish ? "Hello" : "Merhaba")
                
            }
            
        }
        .font(.title)
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
