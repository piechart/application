//
//  DisplayCollection.swift
//  CHMeetupApp
//
//  Created by Alexander Zimin on 10/03/2017.
//  Copyright © 2017 CocoaHeads Community. All rights reserved.
//

import Foundation

protocol DisplayCollection {
  var numberOfSections: Int { get }
  func numberOfRows(in section: Int) -> Int
  func modelForIndexPath(indexPath: IndexPath) -> CellViewAnyModelType
}

extension DisplayCollection {
  var numberOfSections: Int {
    return 1
  }
}
