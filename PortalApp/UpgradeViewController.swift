//
//  UpgradeViewController.swift
//  PortalApp
//
//  Created by Ben Scheirman on 1/19/21.
//

import UIKit

class UpgradeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSubviews()
    }
    
    private func configureSubviews() {
        view.backgroundColor = .white
        
        let imageView = UIImageView(image: UIImage(named: "night-scene"))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6)
        ])
        
        let fadeToBlack = GradientView()
        fadeToBlack.isOpaque = false
        fadeToBlack.startColor = .clear
        fadeToBlack.endColor = .black
        fadeToBlack.locations = [0.25, 0.58]
        fadeToBlack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fadeToBlack)
        
        NSLayoutConstraint.activate([
            fadeToBlack
                .leadingAnchor.constraint(equalTo: view.leadingAnchor),
            fadeToBlack
                .trailingAnchor.constraint(equalTo: view.trailingAnchor),
            fadeToBlack
                .topAnchor.constraint(equalTo: view.topAnchor),
            fadeToBlack
                .bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

#if DEBUG
import SwiftUI

struct UpgradeViewController_Previews: PreviewProvider {
    static var previews: some View {
        ViewControllerPreview<UpgradeViewController>()
    }
}
#endif
