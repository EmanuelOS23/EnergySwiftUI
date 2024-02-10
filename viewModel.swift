//
//  viewModel.swift
//  ProjetoFinalApp
//
//  Created by Turma01-7 on 07/02/24.
//



import Foundation


struct Energy : Codable, Hashable{
    var _id : String?
    var _rev : String?
    var nome : String
    var horas : Double?
    var dias : Double?
    var potencia : Double?
    var precokwh : Double?
    var consumodiario : Double?
    var consumomensal : Double?
    var customensal : Double?
}
class ViewModel : ObservableObject{
    
    @Published var list: [Energy] = []

    func post(_ obj : Energy){
        
        
        guard let url = URL(string: "http://192.168.128.34:1880/postEnergy") else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        // Headers must specify that the HTTP request body is JSON-encoded
        var headers = request.allHTTPHeaderFields ?? [:]
        headers["Content-Type"] = "application/json"
        request.allHTTPHeaderFields = headers
        
        let encoder = JSONEncoder()
        
        do {
            let jsonData = try encoder.encode(obj)
            request.httpBody = jsonData
            print("jsonData: ", String(data: request.httpBody!, encoding: .utf8) ?? "no body data")
        } catch {
            print("Error encoding to JSON: \(error.localizedDescription)")
        }
        
        
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error to send resource: \(error.localizedDescription)")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                print("Error to send resource: invalid response")
                return
            }
            
            if httpResponse.statusCode == 200 {
                print("Resource POST successfully")
            } else {
                print("Error POST resource: status code \(httpResponse.statusCode)")
            }
        }
        
        task.resume()
        
    }
    
    func fetch(){
        guard let url = URL(string: "http://192.168.128.34:1880/getEnergy") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){[weak self] data, _, error in
            
            guard let data = data, error == nil  else{
                return
            }
            
            do{
                let decodicador = try JSONDecoder().decode([Energy].self, from: data)
                
                DispatchQueue.main.async {
                    self?.list = decodicador
                }
                
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
    
    
}



