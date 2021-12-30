//
//  main.swift
//  ToDo list
//
//  Created by raghad Mohammed on 19/05/1443 AH.
//

import Foundation
//var userneeds: [String] = [
//    "Sleep well",
//    "Eat more",
//    "Read about swift!"
//]

var useractions: [String] = []
var Todolist: [String] = []
print("The Student Orgnization Project📂")

print("____________________♡_________________________")

print ("Enter your Name ☟: ")
let name = readLine()
print("-----------Welcome to this program----------")
print(" 'An organization's ability to learn, and translate that learning into action rapidly, is the ultimate competitive advantage.' ")
print("____________________♡_________________________")

print("  important rule to achieve is         ")
var number = 3

while number > 0 {
    
    print("          PRACTICE               ")
    
    number -= 1
    
}
print("                                               ")



var userInput : String = ""
repeat{
    print("_____________________________________________")
    
    print("     Select Tasks     ")
    print("1.your future dream.")
    print("2.Get high marks.")
    print("3.Deadline projects.")
    print("4.Sleep early.")
    print("5.Improve communication skills.")
    print("6.or Set your Tasks📝.")
    print("7.Enter task you want to delete.")

    
    
    
    if let userChoice = readLine() {
        userInput = userChoice
        switch userInput {
            
        case "1":
            enum wishes: CaseIterable {
                case  Teacher, Doctor, artist, other
            }
            var currenthopes: wishes
            for currentwishes in wishes.allCases{
                print(currentwishes)
                
            }
            print("select your dream")
            if let currentwishes = readLine(){
                switch currentwishes {
                case "Teacher":
                    print("teacher")
                case "Doctor":
                    print("doctor")
                case ("artist"):
                    print("artist")
                case("other"):
                    var other = readLine()
                default:
                    print("""
we wish your dreams comes true!
and use this program to achieve it 🤩👏🏻.
""")
                }
            }
             
            
        case "2":
            print("Time Management Tips for getting high marks:")
            print("____________________♡_________________________")
            highMarks()
            
        case "3":
            print("Time Management Tips for Deadline projects:")
            print("____________________♡_________________________")
            diedline()
            
        case "4":
            print("Time Management Tips for sleeping early:")
            print("____________________♡_________________________")
            sleepingEarly()
            
        case "5":
            print("Time Management Tips for enhancing communication skills:")
            print("____________________♡_________________________")
            communication()
                    
        case"6":
            addTask()
             
        case "7":
            RemoveTask()
            
        default:
            print("""
thank you for using this program
we wish this help you to succecc 👏🏻.
""")
            
        }
        
    }
}
while userInput != "8"
        
        
        func highMarks() {
    print("1-bring a note and write important things and summarize.")
    print("2-study daily at least one hour a day.")
    print("3- based on 1 and 2 , if you have trouble in understanding some information ask your teachers during their office hour.")
    print("5-after writing summaries , write a quiz to check your understanding")
    
}

func diedline() {
    print("1-Set Goals: Make a list of your goals for the week. Write down any goal you wish to achieve, whether it’s work-related or not. Then organize your work-related goals into large and small goals. ")
    print("2-Put Together a Checklist")
    print("3-Set Aside Uninterrupted Time: Going to a meeting, then working on a small goal for 20 minutes, then working on a big goal for 30 minutes, then going to another meeting will leave you feeling unproductive and stressed out.")
    print("4-Prioritize: Remember to prioritize your goals. Larger goals that have to get done sooner are the ones you should be working on first. Sometimes people put off larger goals because they’re too intimidating. ")
    print("5-Know Your Productive Period: People have different periods during the day when they’re most productive. Some are more productive in the morning, others in the afternoon. Find out when your most productive time of the day is and schedule your most important goals then.")
    
}

func sleepingEarly() {
    print("1-Exercise.")
    print("2-Avoid stimulants. Caffeinated beverages and foods, including coffee, energy drinks, and certain chocolates")
    print("3-Avoid daytime naps.")
    print("4-Use your bed for only sleep. Avoid doing any other activities in bed, such as working, reading, eating, or watching TV.")
}


func communication() {
    print("1-Listen, listen, and listen. People want to know that they are being heard.")
    print("2-Body language matters. This is important for face-to-face meetings and video conferencing. Make sure that you appear accessible, so have open body language. This means that you should not cross your arms. And keep eye contact so that the other person knows that you are paying attention.")
    print("3-Be brief, yet specific.")
    print("4-Write things down. Take notes while you are talking to another person or when you are in a meeting, and do not rely on your memory.")
    print("5-Think before you speak.")
    print("6-Treat everyone equally. Do not talk down to anyone, treating everyone with respect. Treat others as your equal.")
    print(" Maintain a positive attitude and smile.")
    
}


func addTask() {
    var check = true
    repeat{
    print("set your task or Enter Done if you finish")
    if let addTask : String = readLine() {
        if (addTask.lowercased() == "done") {
            check = false
            print(Todolist)
            break
        }
        else {
        Todolist.append(addTask)
//            print(Todolist)
    }
    }
  } while check
                
    
    
}

func RemoveTask() {
    print("Task\(Todolist)")
    print ("Enter Task you want to delete")
    if let choice = readLine() {
        if let userinput = Int(choice){
            Todolist.remove(at:userinput - 0)
            print(Todolist)
            
        }
    }
    
    
}
