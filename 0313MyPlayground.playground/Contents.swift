import Foundation



struct CoordinatePoint {
    var x: Int
    var y: Int
}

var yagomPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 10)
yagomPoint.y = 3
var desmondPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 1)

desmondPoint = yagomPoint
print(desmondPoint)
