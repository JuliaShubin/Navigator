//
//  ProfileHeaderView.swift
//  navigator
//
//  Created by Юля Шубина on 31.08.2026.
//

import UIKit

class ProfileHeaderView: UIView {

    private let avatarImageView = UIImageView()
    private let fullNameLabel = UILabel()
    private let statusLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
        setupConstraints()
    }

    private func setupViews() {
        backgroundColor = .systemBackground

        avatarImageView.contentMode = .scaleAspectFill
        avatarImageView.clipsToBounds = true
        avatarImageView.layer.cornerRadius = 40
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarImageView.backgroundColor = .gray

        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false

        statusLabel.font = UIFont.systemFont(ofSize: 16)
        statusLabel.textColor = .secondaryLabel
        statusLabel.translatesAutoresizingMaskIntoConstraints = false

        addSubview(avatarImageView)
        addSubview(fullNameLabel)
        addSubview(statusLabel)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: 24),
            avatarImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            avatarImageView.widthAnchor.constraint(equalToConstant: 80),
            avatarImageView.heightAnchor.constraint(equalToConstant: 80),

            fullNameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 16),
            fullNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),

            statusLabel.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 4),
            statusLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }

    func configure(avatarName: String? = nil, name: String, status: String) {
        if let name = avatarName, let image = UIImage(named: name) {
            avatarImageView.image = image
        } else {
            // можно поставить заглушку
            avatarImageView.image = UIImage(systemName: "person.circle.fill")?.withTintColor(.white, renderingMode: .alwaysOriginal).withConfiguration(UIImage.SymbolConfiguration(pointSize: 40))
        }
        fullNameLabel.text = name
        statusLabel.text = status
    }
}
