anyActive
	"Return true if there is any delay currently active"
self newCodeEnabled 
  ifTrue: [
		^Scheduler anyActive
		]
  ifFalse: [
		^ActiveDelay notNil
		].
	