//
//  StartScreenViewController.swift
//  PhotoLibrary
//
//  Created Evgeniy Nosko on 24.09.21.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

class StartScreenViewController: UIViewController, StartScreenViewProtocol {

	var presenter: StartScreenPresenterProtocol = StartScreenPresenter()

	override func viewDidLoad() {
        super.viewDidLoad()

        presenter.view = self
        presenter.viewDidLoad()
    }

}
