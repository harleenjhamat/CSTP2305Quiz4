//
//  Network.swift
//  2305Quiz4
//
//  Created by Harleen Jhamat on 2022-03-02.
//

import Foundation

class Network: ObservableObject {
    @Published var activities: [Activity] = []
    
    func fetchActivity() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos")
        else {
            fatalError("could not URL!")
        
        }
        let request = URLRequest(url: url)
        
        let dataTask = URLSession.shared.dataTask(with:request) {
            data, response, error in
            if let error = error {
                print("[ERROR]\(error)")
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                return
            }
            
            guard response.statusCode == 200,
                  let data = data else {
                      print("failed response")
                      return
                  }
            
            print(String(data: data, encoding: .utf8)!)
            
            DispatchQueue.main.async {
                do {
                    let decodedActivity = try JSONDecoder().decode([Activity].self, from: data)
                    self.activities = decodedActivity
                } catch let error {
                    print("[ERROR]\(error)")
                }
            }
        }
        
        dataTask.resume()
    }
}
