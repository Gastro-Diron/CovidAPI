import ballerina/email;

public function sendEmail() returns error? {
    email:SmtpClient smtpClient = check new ("smtp.gmail.com", "gastrodironalexander@gmail.com" , "jmsrwgdnaewcfvoj");
    email:Message email = {
        to: ["gastrodiron@gmail.com"],
        subject: "Verification Email",
        body: "Please enter this code in the application UI to verify your email address:" +
        "Your code is 1234",
        'from: "gastrodironalexander@gmail.com"
    };
    check smtpClient->sendMessage(email);
}

// email:SmtpClient smtpClient = check new ("smtp.gmail.com", "gastrodironalexander@gmail.com" , "jmsrwgdnaewcfvoj");
// check smtpClient->send("receiver@email.com", "Sample Email Subject", "author@email.com", "This is a sample email.");