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

class PhotoLibraryViewController: UIViewController, PhotoLibraryViewProtocol {

	var presenter: PhotoLibraryPresenterProtocol = PhotoLibraryPresenter()

	override func viewDidLoad() {
        super.viewDidLoad()

        presenter.view = self
        presenter.viewDidLoad()
    }

}
