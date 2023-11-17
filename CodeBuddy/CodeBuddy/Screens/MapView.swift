
import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var selectedMapType = MKMapType.standard
    @State private var showsIcon = false
    
    var body: some View {
        ZStack(alignment: .centerLastTextBaseline) {
//            Map(mapType: $selectedMapType)
            Map()
            
            AddLabelView()
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .environmentObject(MapType())
    }
}


