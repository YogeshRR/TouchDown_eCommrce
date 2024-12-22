//
//  CodableBundleExtension.swift
//  TouchDown
//
//  Created by Yogesh Raut on 22/12/24.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>(_ file : String) -> T {
        // 1. Locate the JSON file.
        
        guard let url = self.url(forResource: file, withExtension: nil) else { return fatalError("Unable to locate \(file) in the location") as! T }
        
        //2. Create a property for data.
        
        guard let data = try? Data(contentsOf: url) else { return fatalError("Unable to load data from \(file) in bundle.") as! T }
        
        // 3. Create a decoder.
        
        let decoder = JSONDecoder()
        
        // 4. Create property for decoded data.
        
        guard let decodedData = try? decoder.decode(T.self, from: data)  else { return fatalError("Unable to load data from \(file) in bundle.") as! T }
        
        // 5. Return ready-to-use data.
        
        return decodedData
    }
}



