import Flutter
import UIKit

class SceneDelegate: FlutterSceneDelegate {

    /// Tag used to identify the privacy blur view.
    private static let privacyViewTag = 9999

    override func sceneWillResignActive(_ scene: UIScene) {
        super.sceneWillResignActive(scene)

        guard let windowScene = scene as? UIWindowScene else { return }

        for window in windowScene.windows {
            // Skip if we already added a privacy view
            if window.viewWithTag(SceneDelegate.privacyViewTag) != nil {
                continue
            }

            let blurEffect = UIBlurEffect(style: .systemThickMaterial)
            let blurView = UIVisualEffectView(effect: blurEffect)
            blurView.tag = SceneDelegate.privacyViewTag
            blurView.frame = window.bounds
            blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]

            // Add an app icon in the center for a polished look
            let iconConfig = UIImage.SymbolConfiguration(pointSize: 48, weight: .medium)
            let icon = UIImage(systemName: "lock.shield.fill", withConfiguration: iconConfig)
            let iconView = UIImageView(image: icon)
            iconView.tintColor = .secondaryLabel
            iconView.translatesAutoresizingMaskIntoConstraints = false
            blurView.contentView.addSubview(iconView)

            NSLayoutConstraint.activate([
                iconView.centerXAnchor.constraint(equalTo: blurView.contentView.centerXAnchor),
                iconView.centerYAnchor.constraint(equalTo: blurView.contentView.centerYAnchor),
            ])

            window.addSubview(blurView)
        }
    }

    override func sceneDidBecomeActive(_ scene: UIScene) {
        super.sceneDidBecomeActive(scene)

        guard let windowScene = scene as? UIWindowScene else { return }

        for window in windowScene.windows {
            if let privacyView = window.viewWithTag(SceneDelegate.privacyViewTag) {
                UIView.animate(withDuration: 0.2, animations: {
                    privacyView.alpha = 0
                }, completion: { _ in
                    privacyView.removeFromSuperview()
                })
            }
        }
    }
}
