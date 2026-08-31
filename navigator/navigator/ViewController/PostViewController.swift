//
//  PostViewController.swift
//  navigator
//
//  Created by Юля Шубина on 31.08.2026.
//

import UIKit

class PostViewController: UIViewController {
    
    private var post: Post

        init(post: Post) {
            self.post = post
            super.init(nibName: nil, bundle: nil)
        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
       // title = "Пост"
        title = post.title
        
        let infoButton = UIBarButtonItem(
                title: "Инфо",
                style: .plain,
                target: self,
                action: #selector(showInfo)
            )
            navigationItem.rightBarButtonItem = infoButton
        
        let label = UILabel()
        label.text = "Детали выбранного поста"
        label.font = .systemFont(ofSize: 17, weight: .regular)
        label.textColor = .label
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(label)

        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    @objc private func showInfo() {
        let infoVC = InfoViewController()
        infoVC.modalPresentationStyle = .fullScreen  
        present(infoVC, animated: true, completion: nil)
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


