
import SwiftUI

struct MapView: View {
    var body: some View {
        
        
        ZStack(alignment: .centerLastTextBaseline) {
            Map()
            
            Rectangle()
                .fill(.black.opacity(0.31))
                .frame(width: 300, height: 70)
                .cornerRadius(10)
                .overlay(
                    HStack(alignment: .center, spacing: 40) {
                        Image(systemName: "plus.circle.fill") // İlk simge için sisteminizdeki simgenin ismini ekleyin
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                        Image(systemName: "star.fill") // İkinci simge için sisteminizdeki simgenin ismini ekleyin
                            .font(.system(size: 24))
                            .foregroundColor(.yellow)
                        Image(systemName: "square.stack.3d.up.fill") // Üçüncü simge için sisteminizdeki simgenin ismini ekleyin
                            .font(.system(size: 24))
                            .foregroundColor(.green)
                        Image(systemName: "location.fill") // Üçüncü simge için sisteminizdeki simgenin ismini ekleyin
                            .font(.system(size: 24))
                            .foregroundColor(.blue)
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


