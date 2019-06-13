import Dispatch

func downloadMovies(numberOfMovies: Int) {
    
    // Create a semaphore
    let sem = DispatchSemaphore(value: numberOfMovies)
    
    // Launch 8 tasks
    // Each task should wait (pretend downloading takes 2 seconds) and inform the console once it's done.
    // Run the tasks on a background thread.
    // Let the semaphore know when you release the resource
    for i in 1...8 {
        DispatchQueue.global().async {
            sem.wait()
            sleep(2)
            print("doing task \(i)")
            sem.signal()
        }
        
    }
    
}

downloadMovies(numberOfMovies:2)
