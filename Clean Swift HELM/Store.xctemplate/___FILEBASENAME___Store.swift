//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates

protocol ___VARIABLE_entityName___Store {
    func get___VARIABLE_entityPluralName___(completion: @escaping ___VARIABLE_entityName___StoreGet___VARIABLE_entityPluralName___CompletionHandler)
    func get___VARIABLE_entityName___(withId id: String, completion: @escaping ___VARIABLE_entityName___StoreGet___VARIABLE_entityName___CompletionHandler)
    func create___VARIABLE_entityName___(___VARIABLE_entityLowercaseName___ToCreate ___VARIABLE_entityLowercaseName___: ___VARIABLE_entityName___, completion: @escaping ___VARIABLE_entityName___StoreCreate___VARIABLE_entityName___CompletionHandler)
    func update___VARIABLE_entityName___(___VARIABLE_entityLowercaseName___ToUpdate ___VARIABLE_entityLowercaseName___: ___VARIABLE_entityName___, completion: @escaping ___VARIABLE_entityName___StoreUpdate___VARIABLE_entityName___CompletionHandler)
    func delete___VARIABLE_entityName___(withId id: String, completion: @escaping ___VARIABLE_entityName___StoreDelete___VARIABLE_entityName___CompletionHandler)
}

typealias ___VARIABLE_entityName___StoreGet___VARIABLE_entityPluralName___CompletionHandler = (___VARIABLE_entityName___StoreResult<[___VARIABLE_entityName___]>) -> Void
typealias ___VARIABLE_entityName___StoreGet___VARIABLE_entityName___CompletionHandler = (___VARIABLE_entityName___StoreResult<___VARIABLE_entityName___>) -> Void
typealias ___VARIABLE_entityName___StoreCreate___VARIABLE_entityName___CompletionHandler = (___VARIABLE_entityName___StoreEmptyResult) -> Void
typealias ___VARIABLE_entityName___StoreUpdate___VARIABLE_entityName___CompletionHandler = (___VARIABLE_entityName___StoreEmptyResult) -> Void
typealias ___VARIABLE_entityName___StoreDelete___VARIABLE_entityName___CompletionHandler = (___VARIABLE_entityName___StoreEmptyResult) -> Void

enum ___VARIABLE_entityName___StoreResult<U> {
    case success(result: U)
    case failure(error: ___VARIABLE_entityName___StoreError)
}

enum ___VARIABLE_entityName___StoreEmptyResult {
    case success
    case failure(error: ___VARIABLE_entityName___StoreError)
}

enum ___VARIABLE_entityName___StoreError: Equatable, Error {
    case cannotGet(String)
    case cannotCreate(String)
    case cannotUpdate(String)
    case cannotDelete(String)
}

func ==(lhs: ___VARIABLE_entityName___StoreError, rhs: ___VARIABLE_entityName___StoreError) -> Bool {
    switch (lhs, rhs) {
    case (.cannotGet(let a), .cannotGet(let b)) where a == b: return true
    case (.cannotCreate(let a), .cannotCreate(let b)) where a == b: return true
    case (.cannotUpdate(let a), .cannotUpdate(let b)) where a == b: return true
    case (.cannotDelete(let a), .cannotDelete(let b)) where a == b: return true
    default:
        return false
    }
}
