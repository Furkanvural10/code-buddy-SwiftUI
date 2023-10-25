
import SwiftUI

struct MapView: View {
    var body: some View {
        
        ZStack(alignment: .centerLastTextBaseline) {
            
            Map()
            Rectangle()
                .opacity(0.1)
                .frame(width: 300, height: 70)
                .cornerRadius(5)
                .padding(.bottom, 20)
                
                
                
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
