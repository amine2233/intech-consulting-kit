//
//  DependencyServiceError.swift
//  DependencyInjection
//
//  Created by Amine Bensalah on 14/11/2019.
//

import Foundation

public enum DependencyServiceError: Error {
    case unregistred(String)
    case notFound(String)
}
