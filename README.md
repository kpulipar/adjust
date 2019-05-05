# Adjust

**Adjust Interview Assignment**:

Task 01: 
===

Write a simple CLI application in the language of your choice that does the following:
Print the numbers from 1 to 10 in random order to the terminal.
Please provide a README, that explains detailed how to run the program on MacOS and Linux. .

Result:
==
- Choosen bash script to print the random numbers. 

# Run on Linux box
  -  Login to the linux system and perform the below steps
  -  specify the random range by passing arguments to script as shown below
  ```
     $ git clone https://github.com/kpulipar/adjust.git
     $ cd adjust
     $ ./random.sh 1 10
        6
        3
        4
        8
        4
        5
        7
        8
        3
        6
  ```
# Run on MacOS 
I am using Windows OS,i do have the environment to test above bash script on MacOS so written python command. I tried to launch GCP MacOS instance from my GCP account but GCP marketplace is not having MacOS image.Below command will work on both Linux and MacOS. 
**Requirement**:
    Python 2.7 is required for executing this single line on MacOS terminal.

**Run**

-  Execute the command on MacOS terminal:
`python -c "import random;adjust = [random.randrange(1, 10, 1) for _ in range(10)];print('\n'.join(map(str, adjust)))"`


**Syntax details** : 

random.randrange(start(opt),stop,step(opt))

**Parameters** :

**start(opt)** :  Number consideration for generation starts from this,
default value is 0. This parameter is optional.

**stop** : Numbers less than this are generated. This parameter is mandatory.

**step(opt)** : Step point of range, this won't be included. This is optional.
Default value is 1.


TASK 02:
===
Imagine a server with the following specs:
- 4 times Intel(R) Xeon(R) CPU E7-4830 v4 @ 2.00GHz
- 64GB of ram
- 2 tb HDD disk space
- 2 x 10Gbit/s nics
The server is used for SSL offloading and proxies around 25000 requests per second.
Please let us know which metrics are interesting to monitor in that specific case and how would you do that? What are the challenges of monitoring this?

**Response**: 

Following Monitoring metrics need to be monitor for this Monitoring KPI requirement

* First priority is to monitor CPU Load.SSL acceleration is CPU-intensive task for server. 
* Memory Usage
* System Load
* Status codes
* Response time
* Simulating the ssl cipher key exchange
 	
**how would you do that?**

It depends on which monitoring tool currently available for monitoring above metrics. By configuring the threshold limits for each metrics,We can  enable notifications so that it will alert the operator once it reaches the warning and critical threshold limit.
  
**Challenges** 

Simulating the real world requests are challenging for monitoring this. key exhange for each certificate type on load environment will provide performance for setting the threshold limits.Configuring the “SSL Decrypted” analyzer is needed.

Preparing the run instructions/recommended actions to follow after triggering the notification. 

