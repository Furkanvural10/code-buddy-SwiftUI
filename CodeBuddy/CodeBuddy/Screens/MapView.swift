
import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var selectedMapType = MKMapType.standard
    
    var body: some View {
        ZStack(alignment: .centerLastTextBaseline) {
            Map(mapType: $selectedMapType)
            
            
            Rectangle()
                .fill(Color.black.opacity(0.4))
                .frame(width: 300, height: 70)
                .cornerRadius(10)
                .overlay(
                    HStack(alignment: .center, spacing: 40) {
                        Image(systemName: "plus")
                            .font(.system(size: 24))
                            .foregroundColor(.green)
                        Image(systemName: "star.fill")
                            .font(.system(size: 24))
                            .foregroundColor(.yellow)
                        Image(systemName: "square.stack.3d.up.fill")
                            .font(.system(size: 24))
                            .foregroundColor(.orange)
                            .onTapGesture {
                                self.selectedMapType = .hybridFlyover
                            }
                        Image(systemName: "location.circle.fill")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                    }
                )
                .padding(.bottom, 25)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}


