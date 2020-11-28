import AWSLambdaRuntime

Lambda.run { (context, name: String, completion: @escaping (Result<String, Error>) -> Void) in
    completion(.success("Hello world"))
}
