import AWSLambdaEvents
import AWSLambdaRuntime
import Foundation
import Pinpoint

let accessKeyId = environmentVariable(for: "AWS_ACCESS_KEY_ID")
let secretAccessKey = environmentVariable(for: "AWS_SECRET_ACCESS_KEY")
let pinpoint = Pinpoint(accessKeyId: accessKeyId, secretAccessKey: secretAccessKey, region: .uswest2)

Lambda.run { (context, event: DynamoDB.Event, completion: @escaping (Result<String, Error>) -> Void) in
    
    for record in event.records {
        guard let event = record.change.newImage ?? record.change.oldImage else {
            completion(.failure(LambdaError.noImage))
            return
        }
        
        guard case .string(let deviceToken) = event["deviceToken"] else {
            completion(.failure(LambdaError.noDeviceToken))
            return
        }
        
        let message = Pinpoint.APNSMessage(
            body: "Welcome to the world of serverless",
            sound: "bingbong.aiff",
            title: "Hello Swift Lambda"
        )
        let messageConfig = Pinpoint.DirectMessageConfiguration(aPNSMessage: message)
        let messageRequest = Pinpoint.MessageRequest(
            addresses: [deviceToken: Pinpoint.AddressConfiguration(channelType: .apnsSandbox)],
            messageConfiguration: messageConfig
        )
        let request = Pinpoint.SendMessagesRequest(
            applicationId: "d964d60593624c87a39a993891fa50f0",
            messageRequest: messageRequest
        )
        
        pinpoint.sendMessages(request).whenComplete { result in
            switch result {
            case .success:
                completion(.success("Sent push to \(deviceToken)"))
                
            case .failure(let error):
                completion(.failure(error))
            }
        }
        
    }
}

func environmentVariable(for name: String) -> String? {
    return ProcessInfo.processInfo.environment[name]
}

enum LambdaError: Error {
    case noDeviceToken
    case noImage
    case sendNotificationFailed
}
