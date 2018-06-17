//
//  Message.swift
//  Flash Chat
//
//  This is the model class that represents the blueprint for a message

class Message {
    var sender: String = ""
    var messageBody: String = ""
    
    init(message: String, author: String) {
        messageBody = message
        sender = author
    }
}
