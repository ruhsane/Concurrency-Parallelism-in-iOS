import Foundation
import PlaygroundSupport

//PlaygroundPage.current.needsIndefiniteExecution = true

let calculation = {
    for i in 0...100 {
        print(i)
    }
}

let thread = Thread {
    
    //TODO: What must the thread do here to match the expected output listed below?
    print("On thread: \(Thread.current) doing work")
    calculation()
}

print("On thread: \(Thread.current) doing nothing")
//TODO: Give new thread its proper name, as in expected output...
thread.name = "Background Thread"
thread.qualityOfService = .userInitiated

thread.start()
