//crypto-secure-random-digit is used here to get random challenge code - https://github.com/ottokruse/crypto-secure-random-digit
const digitGenerator = require("crypto-secure-random-digit");
// Load the AWS SDK for Node.js
var AWS = require("aws-sdk");

// Set the region
AWS.config.update({ region: "us-west-2" });

function sendChallengeCode(emailAddress, secretCode) {
  // Use SES or custom logic to send the secret code to the user.


  // Create sendEmail params
  var params = {
    Destination: {
      CcAddresses: [],
      ToAddresses: [emailAddress],
    },
    Message: {
      Body: {
        Html: {
          Charset: "UTF-8",
          Data: "HTML_FORMAT_BODY",
        },
        Text: {
          Charset: "UTF-8",
          Data: "Your code: " + secretCode,
        },
      },
      Subject: {
        Charset: "UTF-8",
        Data: "Custom Challenge",
      },
    },
    Source: "kyle@kiloloco.com" /* required */,
    ReplyToAddresses: ["kyle@kiloloco.com"],
  };

  // Create the promise and SES service object
  var sendPromise = new AWS.SES({ apiVersion: "2010-12-01" })
    .sendEmail(params)
    .promise();

  // Handle promise's fulfilled/rejected states
  sendPromise
    .then(function (data) {
      console.log(data.MessageId);
    })
    .catch(function (err) {
      console.error(err, err.stack);
    });
}

function createAuthChallenge(event) {
  if (event.request.challengeName === "CUSTOM_CHALLENGE") {
    // Generate a random code for the custom challenge
    const challengeCode = digitGenerator.randomDigits(6).join("");

    // Send the custom challenge to the user
    sendChallengeCode(event.request.userAttributes.email, challengeCode);

    event.response.privateChallengeParameters = {};
    event.response.privateChallengeParameters.answer = challengeCode;
  }
}

exports.handler = async (event) => {
  createAuthChallenge(event);
};
