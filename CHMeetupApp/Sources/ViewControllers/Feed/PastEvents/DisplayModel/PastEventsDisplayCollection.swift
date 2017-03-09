//
//  PastEventsDisplayCollection.swift
//  CHMeetupApp
//
//  Created by Denis on 03.03.17.
//  Copyright © 2017 CocoaHeads Community. All rights reserved.
//

import UIKit

struct PastEventsDisplayCollection: DisplayCollection {
  let modelCollection = DataModelCollection(type: EventEntity.self)

  var numberOfSections: Int {
    return modelCollection.count
  }

  func numberOfRows(in section: Int) -> Int {
    return 1
  }

  func headerTitle(for section: Int) -> String {
    let entity = modelCollection[section]
    let startTime = DateFormatter.localizedString(from: entity.startDate, dateStyle: .none, timeStyle: .short)
    return startTime
  }

  func modelForIndexPath(indexPath: IndexPath) -> CellViewAnyModelType {
    let model = PastEventsTableViewCellModel(event: modelCollection[indexPath.section])
    return model
  }
}
