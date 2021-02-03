//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import Amplify

struct APIOperationResponse {
    let urlError: URLError?
    let httpURLResponse: HTTPURLResponse?

    public init(error: Error?, response: URLResponse?) {
        self.urlError = error as? URLError
        self.httpURLResponse = response as? HTTPURLResponse
    }
}

extension APIOperationResponse {

    /// Validate the response from the service and throws APIError if invalid.
    func validate() throws {
        switch (urlError, httpURLResponse) {
        case (nil, nil):
            break
        case (.some(let error), .none):
            throw APIError.networkError(error.localizedDescription, nil, error)
        case (.none, .some(let response)):
            let statusCode = response.statusCode

            let successStatusCodes = 200 ..< 300
            if !successStatusCodes.contains(statusCode) {
                throw APIError.httpStatusError(statusCode, response)
            }
        case (.some(let error), .some(let response)):
            let userInfo = ["HTTPURLResponse": response]
            throw APIError.networkError(error.localizedDescription, userInfo, error)
        }
    }
}
