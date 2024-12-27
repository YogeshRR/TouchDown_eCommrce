//
//  Shop.swift
//  TouchDown
//
//  Created by Yogesh Raut on 26/12/24.
//

import Foundation

class Shop : ObservableObject {
  @Published  var showingProduct : Bool = false
  @Published  var selectedProduct : Product? = nil
}
