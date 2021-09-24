//
//  PhotoLibraryPresenter.swift
//  PhotoLibrary
//
//  Created Evgeniy Nosko on 24.09.21.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation



// MARK: Presenter -
protocol PhotoLibraryPresenterProtocol {
	var view: PhotoLibraryViewProtocol? { get set }
    func viewDidLoad()
}

class PhotoLibraryPresenter: PhotoLibraryPresenterProtocol {

    weak var view: PhotoLibraryViewProtocol?

    func viewDidLoad() {

    }
}
