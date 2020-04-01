//
//  SearchableRecord.swift
//  Continuum
//
//  Created by Colby Harris on 4/1/20.
//  Copyright © 2020 trevorAdcock. All rights reserved.
//

import Foundation

protocol SearchableRecord {
    func matches(searchTerm: String) -> Bool
}
