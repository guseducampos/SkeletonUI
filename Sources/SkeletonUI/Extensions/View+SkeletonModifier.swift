import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension View {
    func skeleton(with loading: Bool, transition: AnyTransition? = nil, animated: Animation? = nil) -> ModifiedContent<Self, SkeletonModifier> {
        modifier(SkeletonModifier(skeleton: SkeletonInteractor(loading, transition: transition, animated: animated)))
    }

    func skeleton(with loading: Bool,
                  transition: AnyTransition? = nil,
                  animated: Animation? = nil,
                  shape: ShapeType = .capsule) -> ModifiedContent<Self, SkeletonModifier> {
        let presenter = ShapePresenter(type: shape)
        let interactor = SkeletonInteractor(loading,
                                            transition: transition,
                                            animated: animated,
                                            shape: ShapeInteractor(presenter:
                                                                    presenter))
       return modifier(SkeletonModifier(skeleton: interactor))
    }
}
