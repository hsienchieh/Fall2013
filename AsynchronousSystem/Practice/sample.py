import sys;
import threading;

CONST_DEFAULT_THREAD_COUNT = 5; # default thread count constant
CONST_DEFAULT_REQUEST_COUNT = 5; # default request count constant

class Bakery:
   
    choosing = [];
    num = [];
    nThreads = 0;
   
    # A top-level method "setup" that takes the set of all thread objects and the
    # total number of requests and initializes shared variables used by the algorithm
    def setup(self):
        for i in range(self.nThreads + 1):
            self.choosing.append(0);
            self.num.append(0);
   
    def task(self, threadID):
        print (str(threadID) + " executing task");
       
    # A method "cs" that takes a method object "task" and calls "task" in the critical section;
    def cs(self, threadID, task):
       
        try:
            self.choosing[threadID] = 1;

            #maxValue = 1 + max(self.num);
             
            self.num[threadID] = 1 + max(self.num);
           
            maxValue = self.num[threadID];
           
            print ("Thread id " + str(threadID) + " assigned Token: " + str(maxValue));
                   
            self.choosing[threadID] = 0;
           
            #print ("Inside cs() method before check - thread id: " + str(threadID) + " , self.num[threadID]: " + str(self.num[threadID]) + " , maxVal: " + str(maxValue));
           
            for i in range (self.nThreads):               
                if i != threadID:
                    while self.choosing[i] != 0:
                        pass;
       
                    while (self.num[i] != 0 and (self.num[threadID] > self.num[i] or (self.num[i] == self.num[threadID] and threadID > i))):
                        pass;
           
            print (str(threadID) + " entering CS with Token Number: " + str(self.num[threadID]));
           
            # Critical Section
            self.task(threadID);

            print (str(threadID) + " exiting CS With Token number: " + str(self.num[threadID]));           
            # Resetting the num value
            self.num[threadID] = 0;
           
        except:
            print ("Exception: In class bakery.cs() method");
               
              
    def main(self, threadID, task):
       
        while True:
            print (str(threadID) + " requesting CS. Token not assigned yet");
            self.cs(threadID, task);
           
# A top-level method "setup" that takes the set of all thread objects and the
# total number of requests and initializes shared variables used by the algorithm           
def setup(nThreads, nRequests):
   
    threadList = []; #This structure contains the list of threads
    bakeryInstance = Bakery();
    bakeryInstance.nThreads = nThreads;
   
    # Call the Bakery setup method
    bakeryInstance.setup();
   
    print ("Running Lamport's bakery algorithm");
    task = 0;
   
    try:
       
        for count in range(nThreads):
            newThread = threading.Thread(target=bakeryInstance.main, args=[count, task]);
            threadList.insert(count, newThread);
            #newThread.setDaemon(1);
            newThread.start();
   
    except:
       print ('Error: unable to start thread');
               
def main():
   
    #Information about variables used:
    nThreads = 0; # Given number of threads
    nRequests = 0; # Given total number of requests randomly distributed among the threads
   
    # The passed command-line argument can be an alpha-numeric character
    # So, use try-catch block to catch such problems
    # and set a default value of number of threads
    try:
        if len(sys.argv) > 1:
            nThreads = int(sys.argv[1]);
        else:
            nThreads = CONST_DEFAULT_THREAD_COUNT;
           
    except (ValueError, IndexError):
        nThreads = CONST_DEFAULT_THREAD_COUNT;
       
    try:
        if len(sys.argv) > 1:
            nRequests = int(sys.argv[2]);
        else:
            nRequests = CONST_DEFAULT_REQUEST_COUNT;
           
    except (ValueError, IndexError):
        nRequests = CONST_DEFAULT_REQUEST_COUNT;       
   
   
    #print (nThreads, nRequests);

    #Create the threads
    setup(nThreads, nRequests);

#Call the main method   
main();