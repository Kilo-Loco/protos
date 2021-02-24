const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "globalmessagingproto": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://nuqcj5dgv5gghcpflrxxjfxe3a.appsync-api.us-west-2.amazonaws.com/graphql",
                    "region": "us-west-2",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-6mx6u7xwunhx3mzvuhwp6v4xaa"
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
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://nuqcj5dgv5gghcpflrxxjfxe3a.appsync-api.us-west-2.amazonaws.com/graphql",
                        "Region": "us-west-2",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-6mx6u7xwunhx3mzvuhwp6v4xaa",
                        "ClientDatabasePrefix": "globalmessagingproto_API_KEY"
                    },
                    "globalmessagingproto_AWS_IAM": {
                        "ApiUrl": "https://nuqcj5dgv5gghcpflrxxjfxe3a.appsync-api.us-west-2.amazonaws.com/graphql",
                        "Region": "us-west-2",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "globalmessagingproto_AWS_IAM"
                    }
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "us-west-2:23edfc8f-306d-4033-8923-e62af8811617",
                            "Region": "us-west-2"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-west-2_9vFapeET5",
                        "AppClientId": "7plursqtiv3b070g5gcdju422f",
                        "Region": "us-west-2"
                    }
                },
                "Auth": {
                    "Default": {
                        "OAuth": {
                            "WebDomain": "globalmessagingprotoe6083b93-e6083b93-staging.auth.us-west-2.amazoncognito.com",
                            "AppClientId": "7plursqtiv3b070g5gcdju422f",
                            "SignInRedirectURI": "globalchat://",
                            "SignOutRedirectURI": "globalchat://",
                            "Scopes": [
                                "phone",
                                "email",
                                "openid",
                                "profile",
                                "aws.cognito.signin.user.admin"
                            ]
                        },
                        "authenticationFlowType": "USER_SRP_AUTH"
                    }
                }
            }
        }
    }
}''';