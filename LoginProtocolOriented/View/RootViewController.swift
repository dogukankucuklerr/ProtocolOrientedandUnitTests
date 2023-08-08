//
//  ViewController.swift
//  LoginProtocolOriented
//
//  Created by Doğukan Küçükler on 8.08.2023.
//

import UIKit

class RootViewController: UIViewController, RootViewModelOutput {

    
    private let viewModel : RootViewModel
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .green
        viewModel.checkLogin()
    }
    
    init(viewModel: RootViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        viewModel.output = self
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
  //  func processFlow() {
        
     //   if let accessToken = UserDefaults.standard.string(forKey: "ACCESS_TOKEN"), !accessToken.isEmpty {
     //       showMainApp()
     //   } else {
       //     showLogin()
      //  }
        
    //}
    
    func showMainApp() {
        let mainViewController = MainViewController()
        navigationController?.present(mainViewController, animated: true)

    }

    func showLogin() {
        let loginViewController = LoginViewController()
        navigationController?.present(loginViewController, animated: true)
    }

}
