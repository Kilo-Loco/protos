import AsyncHTTPClient
import AWSLambdaEvents
import AWSLambdaRuntime
import Foundation

let API_KEY = ProcessInfo.processInfo.environment["API_KEY"]

let httpClient = HTTPClient(eventLoopGroupProvider: .createNew)

defer {
    try? httpClient.syncShutdown()
}

Lambda.run { (context, payload: String, completion: @escaping (Result<String, Error>) -> Void) in
    
    guard
        let apiKey = API_KEY,
        var request = try? HTTPClient.Request(url: "", method: .POST)
    else {
        return completion(.failure(LambdaError.badKeyOrRequest))
    }
    
    request.headers.add(name: "Content-Type", value: "application/graphql")
    request.headers.add(name: "x-api-key", value: apiKey)
    
    do {
        let queryData = try JSONEncoder().encode(["query": """

        """])
        
        request.body = .data(queryData)
        
        return httpClient.execute(request: request).whenComplete { result in
            do {
                let response = try result.get()
                
                if response.status == .ok, let body = response.body {
                    let stringBody = String(buffer: body)
                    completion(.success(stringBody))
                } else {
                    completion(.failure(LambdaError.badRequestResponse))
                }
                
            } catch {
                completion(.failure(error))
            }
        }
        
    } catch {
        return completion(.failure(error))
    }
}

enum LambdaError: LocalizedError {
    case badKeyOrRequest
    case badRequestResponse
}
