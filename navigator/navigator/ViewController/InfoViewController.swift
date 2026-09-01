//
//  InfoViewController.swift
//  navigator
//
//  Created by Юля Шубина on 31.08.2026.
//

import UIKit

class InfoViewController: UIViewController {

    private let actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Показать алерт", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Информация"

        actionButton.addTarget(self, action: #selector(didTapAction), for: .touchUpInside)

        view.addSubview(actionButton)

        NSLayoutConstraint.activate([
            actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc private func didTapAction() {
        let alert = UIAlertController(
            title: "Внимание",
            message: "Это тестовое сообщение из InfoViewController",
            preferredStyle: .alert
        )

        let okAction = UIAlertAction(
            title: "OK",
            style: .default
        ) { _ in
            print("Нажато OK")
        }

        let cancelAction = UIAlertAction(
            title: "Отмена",
            style: .cancel
        ) { _ in
            print("Нажато Отмена")
        }

        alert.addAction(okAction)
        alert.addAction(cancelAction)

        present(alert, animated: true, completion: nil)
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


