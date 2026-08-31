//
//  PostTableViewCell.swift
//  navigator
//
//  Created by Юля Шубина on 31.08.2026.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    static let identifier = "PostTableViewCell"
    
    private let authorLabel = UILabel()
    private let postImageView = UIImageView()
    private let descriptionLabel = UILabel()
    private let statsLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupConstraints()
        selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
        setupConstraints()
        selectionStyle = .none
    }
    
    private func setupViews() {
        contentView.backgroundColor = .clear
        
        authorLabel.font = UIFont.boldSystemFont(ofSize: 16)
        authorLabel.translatesAutoresizingMaskIntoConstraints = false
        
        postImageView.contentMode = .scaleAspectFill
        postImageView.clipsToBounds = true
        postImageView.translatesAutoresizingMaskIntoConstraints = false
        
        descriptionLabel.font = UIFont.systemFont(ofSize: 15)
        descriptionLabel.numberOfLines = 0
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        statsLabel.font = UIFont.systemFont(ofSize: 14)
        statsLabel.textColor = .secondaryLabel
        statsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(authorLabel)
        contentView.addSubview(postImageView)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(statsLabel)
    }
    
    private func setupConstraints() {
        let margins = contentView.layoutMarginsGuide
        
        NSLayoutConstraint.activate([
            authorLabel.topAnchor.constraint(equalTo: margins.topAnchor, constant: 12),
            authorLabel.leadingAnchor.constraint(equalTo: margins.leading),
            authorLabel.trailingAnchor.constraint(equalTo: margins.trailing),
            
            postImageView.topAnchor.constraint(equalTo: authorLabel.bottomAnchor, constant: 8),
            postImageView.leadingAnchor.constraint(equalTo: margins.leading),
            postImageView.trailingAnchor.constraint(equalTo: margins.trailing),
            postImageView.heightAnchor.constraint(equalTo: postImageView.widthAnchor, multiplier: 1.0), /
            
            descriptionLabel.topAnchor.constraint(equalTo: postImageView.bottomAnchor, constant: 12),
            descriptionLabel.leadingAnchor.constraint(equalTo: margins.leading),
            descriptionLabel.trailingAnchor.constraint(equalTo: margins.trailing),
            
            statsLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 8),
            statsLabel.leadingAnchor.constraint(equalTo: margins.leading),
            statsLabel.trailingAnchor.constraint(equalTo: margins.trailing),
            statsLabel.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -8)
        ])
    }
    
    func configure(with post: Post) {
        authorLabel.text = post.author
        descriptionLabel.text = post.description
        statsLabel.text = "❤️"
    }
}
