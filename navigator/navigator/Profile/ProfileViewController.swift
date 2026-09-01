//
//  ProfileViewController.swift
//  navigator
//
//  Created by Юля Шубина on 31.08.2026.
//
import UIKit

class ProfileViewController: UIViewController {
    
    let headerView = ProfileHeaderView()
    let actionButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray

        view.addSubview(headerView)
        view.addSubview(actionButton)
        
        [headerView, actionButton].forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
        
        setupConstraints()
        
    }
    
    private func setupConstraints() {
        guard let safeArea = view.safeAreaLayoutGuide else { return }
        
        NSLayoutConstraint.activate([
           
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 220),
            
            // actionButton: слева/справа 0, снизу к Safe Area
            actionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            actionButton.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor),
            actionButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
     
        actionButton.setTitle("Новая кнопка внизу", for: .normal)
        actionButton.backgroundColor = .systemGreen
        actionButton.setTitleColor(.white, for: .normal)
        actionButton.layer.cornerRadius = 8
    }
}
