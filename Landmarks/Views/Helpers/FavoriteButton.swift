import SwiftUI

struct FavoriteButton: View {
    //Binding属性にしたプロパティはViewで行われたその値の変更をデータソースまで伝播する
    @Binding var isSet:Bool
    var body: some View {
        Button(action: {
            isSet.toggle()
        } ) {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.yellow : Color.gray )
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
