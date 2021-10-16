//
//  Presenter.swift
//  ViperPractice
//
//  Created by Coto on 15/10/2021.
//

import Foundation

protocol AnyPresenter {
    var router: AnyRouter? { get set }
    var interactor: AnyInteractor? { get set }
    var view: AnyView? { get set }
    
    //set functions to react on changes in interactor
    func interactorDidFetchUsers(with result: Result<[User],Error>)
}

class UserPresenter: AnyPresenter {
    
    var interactor: AnyInteractor?
    
    var view: AnyView?
    
    var router: AnyRouter?
    
    func interactorDidFetchUsers(with result: Result<[User], Error>) {
    }
}
