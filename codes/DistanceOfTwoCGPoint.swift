// Distance of two CGPoint

extension CGPoint {
    func distance(from point: CGPoint) -> CGFloat {
        return CGPoint.distance(from: self, to: point)
    }
    
    static func distance(from point1: CGPoint, to point2: CGPoint) -> CGFloat {
        return sqrt(pow(point2.x - point1.x, 2) + pow(point2.y - point1.y, 2))
    }
}

let pointA = CGPoint(x: 4, y: 5)
let pointB = CGPoint(x: 8, y: 6)

pointA.distance(from: pointB) // 4.1231056
CGPoint.distance(from: pointA, to: pointB) // 4.1231056