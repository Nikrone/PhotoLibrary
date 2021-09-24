//
//  StartScreenPresenter.swift
//  PhotoLibrary
//
//  Created Evgeniy Nosko on 24.09.21.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

// MARK: View -
protocol StartScreenViewProtocol: class {

}

// MARK: Presenter -
protocol StartScreenPresenterProtocol: class {
	var view: StartScreenViewProtocol? { get set }
    func viewDidLoad()
}

class StartScreenPresenter: StartScreenPresenterProtocol {

    weak var view: StartScreenViewProtocol?

    func viewDidLoad() {

    }
}
