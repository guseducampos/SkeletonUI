import SwiftUI

final class ShapePresenter: ObservableObject {
    @Published var type: ShapeType = .capsule

    init(type: ShapeType = .capsule) {
        self.type = type
    }
}
