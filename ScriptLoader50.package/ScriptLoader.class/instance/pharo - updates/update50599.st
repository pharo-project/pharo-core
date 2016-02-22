update50599
	"self new update50599"
	
(MCPackage named: 'ConfigurationOfSessionManager') unload.
Metacello new 
	smalltalkhubUser: 'Pharo' project: 'SessionManager';
	configuration: 'SessionManager';
	version: '1.2';
	load.
	self withUpdateLog: '17670 Trait and Class sends unimplemented message in #immediateByteSubclass:instanceVariableNames:classVariableNames:package: 
	https://pharo.fogbugz.com/f/cases/17670

17662 Improved comments for immediate and word subclasses
	https://pharo.fogbugz.com/f/cases/17662

17562 Add default behavior to deprecated methods used to register in startup/shutdown lists
	https://pharo.fogbugz.com/f/cases/17562

17349 DelayScheduler class>>#initialize dos not initialize well the timing semaphore
	https://pharo.fogbugz.com/f/cases/17349'.
	self loadTogether: self script50599 merge: false.
	self flushCaches.
