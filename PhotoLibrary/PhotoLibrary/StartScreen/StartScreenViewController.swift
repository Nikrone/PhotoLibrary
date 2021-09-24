//
//  StartScreenViewController.swift
//  PhotoLibrary
//
//  Created Evgeniy Nosko on 24.09.21.
//  Copyright © 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

// MARK: View -
protocol StartScreenViewProtocol: AnyObject {
    
}

class StartScreenViewController: UIViewController, StartScreenViewProtocol {
    
    //    MARK: - @IBOutlets
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var button: UIButton!
    
    var presenter: StartScreenPresenterProtocol = StartScreenPresenter()

    
    let password: String = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.view = self
        presenter.viewDidLoad()
    }
    
    //    MARK: - @IBActions
    @IBAction private func buttonPressed() {
        if passwordTextField.text == password {
            let storyboard = UIStoryboard(name:"PhotoLibrary", bundle: Bundle.main)
            guard  let photoLibraryViewController = storyboard.instantiateViewController(withIdentifier: "PhotoLibraryViewController") as? PhotoLibraryViewController else {
                return
            }
            navigationController?.pushViewController(photoLibraryViewController, animated: true)
        } else {
            return
        }

    }
    
}
