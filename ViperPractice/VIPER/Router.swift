//
//  Router.swift
//  ViperPractice
//
//  Created by Coto on 15/10/2021.
//

import Foundation
import UIKit

typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter {
    var entry: EntryPoint? { get } // let router know which view is our entry point
    
    static func start() -> AnyRouter
}

class UserRouter: AnyRouter {
    
    var entry: EntryPoint?
    
    static func start() -> AnyRouter {
        var router = UserRouter()
        
        var view: AnyView = UserViewController()
        var interactor: AnyInteractor = UserInteractor()
        var presenter: AnyPresenter = UserPresenter()
        
        view.presenter = presenter //view has to have reference to presenter
        interactor.presenter = presenter //interactor has to have reference to presenter
        
        presenter.router = router
        presenter.view = view
        presenter.interactor = interactor //presenter has to have reference to all kind of stuff
        
        router.entry = view as? EntryPoint //now router knows that view (UserViewController) is our entry point (as? EntryPoint cast sepcyfic type)
        
        return router
    }
}
