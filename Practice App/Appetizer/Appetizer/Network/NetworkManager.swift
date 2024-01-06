//
//  NetworkManager.swift
//  Appetizer
//
//  Created by Hadiuzzaman on 1/1/24.
//

import Foundation

struct NetworkManager {
    
    static let shared = NetworkManager()
    private init(){}
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"
    
    
  
    func getAppetizers(completed: @escaping (Result<[Appetizer], ARError>)-> Void) {
        
        guard let url = URL(string: appetizerURL) else{
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)){
            data, response, error in
            
            if let _ = error  {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode==200 else{
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else{
                completed(.failure(.invalidData))
                return
            }
            
            do{
                let decoder = JSONDecoder()
                let decoderResponse = try decoder.decode( AppetizerResponse.self, from:data)
                
                completed(.success(decoderResponse.request))
            }catch{
                completed(.failure(.invalidData))
            }
        }
        task.resume();
    }
    
}
