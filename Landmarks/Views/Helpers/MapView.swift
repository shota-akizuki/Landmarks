import SwiftUI
import MapKit

struct MapView: View {
    var coodinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    //ステート変数に$をつけることでSwiftUIストレージへの参照を渡すことができる
    
    var body: some View {
        //ユーザーが操作することによりBindingプロパティを経由してregionプロパティの値が変化する
        Map(coordinateRegion: $region )
            .onAppear {
                setRegion(coodinate)
            }
    }
    
    private func setRegion(_ coodinate:CLLocationCoordinate2D)  {
        region = MKCoordinateRegion(
            center: coodinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
    
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coodinate: CLLocationCoordinate2D(latitude:34.011_286,longitude:-116.116_868))
    }
}
