//
//  ProfileViewController.swift
//  navigator
//
//  Created by Юля Шубина on 31.08.2026.
//
import UIKit

class ProfileViewController: UIViewController {
    
    private var headerView: ProfileHeaderView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
        headerView = ProfileHeaderView()
        headerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(headerView)
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
   
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        headerView.frame = view.bounds
    }
    
}
