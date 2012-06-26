initialization
cleanUp
 "Remove terminated processes from my suspended list"

       self suspendedProcesses keys do: [:ea |
               ea isTerminated ifTrue: [self suspendedProcesses removeKey: ea]]