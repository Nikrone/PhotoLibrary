//
//  PhotoLibraryViewController.swift
//  PhotoLibrary
//
//  Created Evgeniy Nosko on 24.09.21.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

// MARK: View -
protocol PhotoLibraryViewProtocol: AnyObject {

}

class PhotoLibraryViewController: UIViewController, PhotoLibraryViewProtocol, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    @IBOutlet private weak var tableView: UITableView!

	var presenter: PhotoLibraryPresenterProtocol = PhotoLibraryPresenter()


	override func viewDidLoad() {
        super.viewDidLoad()

        presenter.view = self
        presenter.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    @IBAction func buttonPressed() {
        let picker = UIImagePickerController()
        
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }
    
}

extension PhotoLibraryViewController: UITableViewDelegate {
    
}

extension PhotoLibraryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Section"
        return cell
    }
    
    
}
