import Combine
import SwiftUI

// sourcery: AutoMockable
protocol SkeletonInteractable: AnyObject {
    var presenter: SkeletonPresenter { get }
    var shape: ShapeInteractable { get }
    var multiline: MultilineInteractable { get }
    var appearance: AppearanceInteractable { get }
    var animation: AnimationInteractable { get }
}

public final class SkeletonInteractor: SkeletonInteractable {
    internal let presenter: SkeletonPresenter
    internal let shape: ShapeInteractable
    internal let multiline: MultilineInteractable
    internal let appearance: AppearanceInteractable
    internal let animation: AnimationInteractable

    internal init(_ loading: Bool, transition: AnyTransition?, animated: Animation?, shape: ShapeInteractable = ShapeInteractor(), multiline: MultilineInteractable = MultilineInteractor(), appearance: AppearanceInteractable = AppearanceInteractor(), animation: AnimationInteractable = AnimationInteractor()) {
        presenter = SkeletonPresenter(loading, transition: transition, animated: animated)
        self.shape = shape
        self.multiline = multiline
        self.appearance = appearance
        self.animation = animation
    }
}
