//
//  FileManager.swift
//  AbsenceRecorder
//
//  Created by Vanichjakvong, Jakpat (IRG) on 10/02/2022.
//

import Foundation

extension FileManager {
    private func getFilePath(fileName: String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent(fileName)
        return url
    }
    
    func save<T: Codable>(to filePath: String, object: T) {
        //create json encoder
        let encoder = JSONEncoder()
        //take encoded json objects and convert them into string
        if let encoded = try? encoder.encode(object) {
            if let json = String(data: encoded, encoding: .utf8) {
                //do file handling to save this json
                let url = getFilePath(fileName: filePath)
                do {
                    //write json string to that file
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func load<T: Codable>(from filePath: String) -> T? {
        let url = getFilePath(fileName: filePath)
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode(T.self, from: data) {
                return loaded
            } else {
                print("Failed to decode")
                return nil
            }
        } else {
            print("Couldn't find file at given path")
            return nil
        }
    }
}
