//
//  Filetexst.swift
//  albrg
//
//  Created by mac on 7/16/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation

class TxtReader {
    var filePrefix: String
    var fileExtension: String
    var from: Int
    var to: Int
    var arrayOfStrings = [String]()
    
    
    init(filePrefix: String, fileExtension: String, from: Int, to: Int) {
        self.filePrefix = filePrefix
        self.fileExtension = fileExtension
        self.from = from
        self.to = to
    }
    
    func read(completion: @escaping (_ success: Bool, _ arrayOfStrings: [String]?)->()) {
        // clear container
        arrayOfStrings = []
        
        DispatchQueue.global(qos: .background).async {
            for index in self.from...self.to {
                let fileName = "\(self.filePrefix)\(index)"
                guard let url = Bundle.main.url(forResource: fileName, withExtension: self.fileExtension) else {
                    DispatchQueue.main.async {
                        completion(false, nil)
                    }
                    print("can't find file \(fileName)\(self.fileExtension)")
                    return
                }
                
                do {
                    let content = try String.init(contentsOf: url)
                    self.arrayOfStrings.append(content)
                } catch {
                    DispatchQueue.main.async {
                        completion(false, nil)
                    }
                    print(error)
                }
            }
            
            DispatchQueue.main.async {
                completion(true, self.arrayOfStrings)
            }
        }
    }
}
