//
//  TaskListDataStore.swift
//  gud-ios
//
//  Created by sudofluff on 7/31/19.
//  Copyright © 2019 sudofluff. All rights reserved.
//

import Foundation

class TaskListDataStore: BaseCacheService {
  var pendingTasks: [Task] = {
    let tempTask = Task(taskId: "oaisj", title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla, lorem et auctor gravida, orci eros feugiat lectus, non pretium nibh ipsum sed neque.", createdAt: Date(), updatedAt: Date())
    return [tempTask]
  }()
  
  var completedTasks: [Task] = []
}