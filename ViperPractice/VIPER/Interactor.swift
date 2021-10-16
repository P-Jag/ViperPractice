//
//  Interactor.swift
//  ViperPractice
//
//  Created by Coto on 15/10/2021.
//

import Foundation

protocol AnyInteractor {
    var presenter: AnyPresenter? { get set }
    
    func getUsers()
    // co completion handler. We want to infrom presenter while everything is ready
}

class UserInteractor: AnyInteractor {
    
    var presenter: AnyPresenter?
    
    func getUsers() {
    
    }
}
