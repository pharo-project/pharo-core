unscheduleDelay: aDelay
	"Private. Unschedule this Delay."
self newCodeEnabled 
  ifTrue: [
	self shouldNotImplement.
	]
  ifFalse: [
	aDelay beingWaitedOn 
		ifFalse:[ ^self ].
	
	ActiveDelay == aDelay 
		ifTrue: [
			SuspendedDelays isEmpty 
				ifTrue: [ ActiveDelay := nil ] 
				ifFalse: [ 	ActiveDelay := SuspendedDelays removeFirst ]] 
		ifFalse:[
			SuspendedDelays remove: aDelay ifAbsent: []].
	
	aDelay beingWaitedOn: false.
	].
