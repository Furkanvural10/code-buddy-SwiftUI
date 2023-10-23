
import SwiftUI

struct UserLabelView: View {
    
    var body: some View {
        ZStack(alignment: .leading) {
            
            Rectangle()
                .fill(Color.gray.opacity(0.05))
                .frame(width: 245, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.all, 4)
            
            HStack() {
                UserImageView()
                TitleSubtitleView()
                StatusIconView()
            }
        }
    }
}

struct UserLabelView_Previews: PreviewProvider {
    static var previews: some View {
        UserLabelView()
    }
}


