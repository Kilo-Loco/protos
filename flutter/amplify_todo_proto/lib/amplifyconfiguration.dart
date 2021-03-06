const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "amplifyDatasource": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://zogpmguog5cezkgmc7uq3i3mma.appsync-api.us-west-2.amazonaws.com/graphql",
                    "region": "us-west-2",
                    "authorizationType": "AMAZON_COGNITO_USER_POOLS"
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
                        "ApiUrl": "https://zogpmguog5cezkgmc7uq3i3mma.appsync-api.us-west-2.amazonaws.com/graphql",
                        "Region": "us-west-2",
                        "AuthMode": "AMAZON_COGNITO_USER_POOLS",
                        "ClientDatabasePrefix": "amplifyDatasource_AMAZON_COGNITO_USER_POOLS"
                    }
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "us-west-2:cdf19962-bb99-4946-8e60-a2c0bc7f5c4e",
                            "Region": "us-west-2"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-west-2_esyeTaLLN",
                        "AppClientId": "28br4dgv3o8r0sar273hsgbru",
                        "Region": "us-west-2"
                    }
                },
                "Auth": {
                    "Default": {
                        "OAuth": {
                            "WebDomain": "amplifytodoprotoa60aaff9-a60aaff9-dev.auth.us-west-2.amazoncognito.com",
                            "AppClientId": "28br4dgv3o8r0sar273hsgbru",
                            "SignInRedirectURI": "todoproto://",
                            "SignOutRedirectURI": "todoproto://",
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