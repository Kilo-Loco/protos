const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "socialmediaproto": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://m2mb4uapjrhffkv42yfvzpxxca.appsync-api.us-west-2.amazonaws.com/graphql",
                    "region": "us-west-2",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-ale73uoorngepojl5zwhqhisem"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "us-west-2:486f6578-3dfb-4952-9d5d-613bc754d0d3",
                            "Region": "us-west-2"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-west-2_XuQV9PB3F",
                        "AppClientId": "3br83rc7eh4t41cqc3de5lobrs",
                        "Region": "us-west-2"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH"
                    }
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://m2mb4uapjrhffkv42yfvzpxxca.appsync-api.us-west-2.amazonaws.com/graphql",
                        "Region": "us-west-2",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-ale73uoorngepojl5zwhqhisem",
                        "ClientDatabasePrefix": "socialmediaproto_API_KEY"
                    },
                    "socialmediaproto_AWS_IAM": {
                        "ApiUrl": "https://m2mb4uapjrhffkv42yfvzpxxca.appsync-api.us-west-2.amazonaws.com/graphql",
                        "Region": "us-west-2",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "socialmediaproto_AWS_IAM"
                    }
                }
            }
        }
    }
}''';