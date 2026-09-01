//
//  FeedViewController.swift
//  navigator
//
//  Created by Юля Шубина on 31.08.2026.
//

import UIKit

class FeedViewController: UIViewController {
    
    private let post = Post(title: "Мой первый пост в ленте")
    
    private let showPostButton: UIButton = {
           let button = UIButton(type: .system)
           button.setTitle("Открыть пост", for: .normal)
           button.titleLabel?.font = .boldSystemFont(ofSize: 16)
           button.translatesAutoresizingMaskIntoConstraints = false
           return button
       }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Лента"

        let label = UILabel()
        label.text = "Лента пользователя"
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.textColor = .label
        label.translatesAutoresizingMaskIntoConstraints = false

        showPostButton.addTarget(self, action: #selector(didTapShowPost), for: .touchUpInside)
        view.addSubview(showPostButton)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    @objc private func didTapShowPost() {
            let postVC = PostViewController()
            navigationController?.pushViewController(postVC, animated: true)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


