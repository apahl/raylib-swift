import CRaylib
import Glibc

public typealias Velocity = Vector2

public struct Direction {
  public var angle: Float
  public var speed: Float

  public init(angle: Float, speed: Float) {
    self.angle = angle
    self.speed = speed
  }
}

public func degrees(from radians: Float) -> Float {
  return radians * 180.0 / Float.pi
}

public func radians(from degrees: Float) -> Float {
  return degrees * Float.pi / 180.0
}

public func velocity(from d: Direction) -> Velocity {
  return Velocity(
    x: sin(radians(from: d.angle)) * d.speed,
    y: cos(radians(from: d.angle)) * d.speed
  )
}

extension Vector2 {
  public static func + (left: Vector2, right: Vector2) -> Vector2 {
    return Vector2(x: left.x + right.x, y: left.y + right.y)
  }

  public static func += (left: inout Vector2, right: Vector2) {
    left = left + right
  }

  public var magnitude: Float {
    return ((x * x) + (y * y)).squareRoot()
  }

  public var normalized: Vector2 {
    let m = magnitude
    if m != 0.0 {
      return Vector2(x: x / m, y: y / m)
    } else {
      return Vector2(x: 0.0, y: 0.0)
    }
  }
}

// Misc
/// Get the current time in seconds
public func getCurrentTime() -> Int {
  return time(nil)
}

public let LIGHTGRAY = Color(r: 200, g: 200, b: 200, a: 255) //  Light Gray
public let GRAY = Color(r: 130, g: 130, b: 130, a: 255) //  Gray
public let DARKGRAY = Color(r: 80, g: 80, b: 80, a: 255) //  Dark Gray
public let YELLOW = Color(r: 253, g: 249, b: 0, a: 255) //  Yellow
public let GOLD = Color(r: 255, g: 203, b: 0, a: 255) //  Gold
public let ORANGE = Color(r: 255, g: 161, b: 0, a: 255) //  Orange
public let PINK = Color(r: 255, g: 109, b: 194, a: 255) //  Pink
public let RED = Color(r: 230, g: 41, b: 55, a: 255) //  Red
public let MAROON = Color(r: 190, g: 33, b: 55, a: 255) //  Maroon
public let GREEN = Color(r: 0, g: 228, b: 48, a: 255) //  Green
public let LIME = Color(r: 0, g: 158, b: 47, a: 255) //  Lime
public let DARKGREEN = Color(r: 0, g: 117, b: 44, a: 255) //  Dark Green
public let SKYBLUE = Color(r: 102, g: 191, b: 255, a: 255) //  Sky Blue
public let BLUE = Color(r: 0, g: 121, b: 241, a: 255) //  Blue
public let DARKBLUE = Color(r: 0, g: 82, b: 172, a: 255) //  Dark Blue
public let PURPLE = Color(r: 200, g: 122, b: 255, a: 255) //  Purple
public let VIOLET = Color(r: 135, g: 60, b: 190, a: 255) //  Violet
public let DARKPURPLE = Color(r: 112, g: 31, b: 126, a: 255) //  Dark Purple
public let BEIGE = Color(r: 211, g: 176, b: 131, a: 255) //  Beige
public let BROWN = Color(r: 127, g: 106, b: 79, a: 255) //  Brown
public let DARKBROWN = Color(r: 76, g: 63, b: 47, a: 255) //  Dark Brown
public let WHITE = Color(r: 255, g: 255, b: 255, a: 255) //  White
public let BLACK = Color(r: 0, g: 0, b: 0, a: 255) //  Black
public let BLANK = Color(r: 0, g: 0, b: 0, a: 0) //  Blank (Transparent)
public let MAGENTA = Color(r: 255, g: 0, b: 255, a: 255) //  Magenta
public let RAYWHITE = Color(r: 245, g: 245, b: 245, a: 255) //  My own White (raylib logo)
