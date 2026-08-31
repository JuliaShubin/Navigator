//
//  ProfileHeaderView.swift
//  navigator
//
//  Created by Юля Шубина on 31.08.2026.
//

import UIKit

class ProfileHeaderView: UIView {
    
    let avatarImageView = UIImageView()
    let fullNameLabel = UILabel()
    let statusLabel = UILabel()
    let statusTextField = UITextField()
    let setStatusButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
       
        avatarImageView.contentMode = .scaleAspectFill
        avatarImageView.layer.cornerRadius = 40
        avatarImageView.clipsToBounds = true
        
        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        fullNameLabel.textColor = .black
        fullNameLabel.text = "Иван Иванов"
        
        statusLabel.font = UIFont.systemFont(ofSize: 14)
        statusLabel.textColor = .gray
        statusLabel.text = "Статус:"
        
        statusTextField.placeholder = "Введите статус"
        statusTextField.borderStyle = .roundedRect
        
        setStatusButton.setTitle("Установить статус", for: .normal)
        setStatusButton.backgroundColor = .systemBlue
        setStatusButton.setTitleColor(.white, for: .normal)
        setStatusButton.layer.cornerRadius = 8
        
        addSubview(avatarImageView)
        addSubview(fullNameLabel)
        addSubview(statusLabel)
        addSubview(statusTextField)
        addSubview(setStatusButton)
    }
    
    private func setupConstraints() {
        
        [avatarImageView, fullNameLabel, statusLabel, statusTextField, setStatusButton].forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
        
        NSLayoutConstraint.activate([
        
            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            avatarImageView.widthAnchor.constraint(equalToConstant: 80),
            avatarImageView.heightAnchor.constraint(equalToConstant: 80),
           
            fullNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
            fullNameLabel.topAnchor.constraint(equalTo: avatarImageView.topAnchor),
            fullNameLabel.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor, constant: -16),
            
            statusLabel.leadingAnchor.constraint(equalTo: fullNameLabel.leadingAnchor),
            statusLabel.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 8),
           
            statusTextField.leadingAnchor.constraint(equalTo: statusLabel.leadingAnchor),
            statusTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            statusTextField.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 8),
            statusTextField.heightAnchor.constraint(equalToConstant: 40),
           
            setStatusButton.leadingAnchor.constraint(equalTo: statusTextField.leadingAnchor),
            setStatusButton.trailingAnchor.constraint(equalTo: statusTextField.trailingAnchor),
            setStatusButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 12),
            setStatusButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
}
