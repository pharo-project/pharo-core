This class plays the role of the announcer for events raised by the Pharo system.

Currently, it acts as a wrapper over the SystemChangeNotifier, but in the future it should be used for announcing the events directly from the system.. 

BEWARE: You should not need to subclass me. Think about just using me to send your announces (if you need system behavior) or using your own announcers as instance or class  variables.