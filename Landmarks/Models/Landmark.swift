import Foundation
import SwiftUI
import CoreLocation

struct Landmark :Hashable,Codable,Identifiable{
    var id: Int
    var name: String
    var park : String
    var state : String
    var description: String
    var isFavorite: Bool
    private var imageName:String
    //Image型のViewを返す計算プロパティを定義
    var image:Image{
        Image(imageName)
    }
    //landmarkの位置情報を管理する仕組みを実装
     
    private var coordinates :Coodinates
    var locationCordinates:CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude, longitude: coordinates.longitude)
        
    }
    
    struct  Coodinates :Hashable,Codable{
        var latitude:Double
        var longitude: Double
    }
}
