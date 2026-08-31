//
//  ProfileHeaderView.swift
//  navigator
//
//  Created by Юля Шубина on 31.08.2026.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private let avatarImageView = UIImageView()
    private let nameLabel = UILabel()
    private let statusLabel = UILabel()
    private let actionButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        // Аватар
        avatarImageView.image = UIImage(systemName: "person.circle.fill")?.withTintColor(.gray)
        avatarImageView.contentMode = .scaleAspectFill
        avatarImageView.clipsToBounds = true
        avatarImageView.layer.cornerRadius = 40
        
        // Имя
        nameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        nameLabel.textColor = .black
        nameLabel.text = "Alex Petrov"
        nameLabel.numberOfLines = 1
        
        // Статус
        statusLabel.font = UIFont.systemFont(ofSize: 16)
        statusLabel.textColor = .darkGray
        statusLabel.text = "Разработчик iOS"
        statusLabel.numberOfLines = 1
        
        // Кнопка
        actionButton.setTitle("Показать статус", for: .normal)
        actionButton.setTitleColor(.white, for: .normal)
        actionButton.backgroundColor = .systemBlue
        actionButton.layer.cornerRadius = 8
        
        addSubview(avatarImageView)
        addSubview(nameLabel)
        addSubview(statusLabel)
        addSubview(actionButton)
        
        actionButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    @objc private func buttonPressed() {
        guard let statusText = statusLabel.text, !statusText.isEmpty else {
            print("Статус не задан")
            return
        }
        print("Статус:")
    }
}
