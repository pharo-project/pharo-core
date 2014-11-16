unscheduleDelay: aDelay
	"Private. Unschedule this Delay."
	aDelay beingWaitedOn 
		ifFalse:[ ^self ].
	
	activeDelay == aDelay 
		ifTrue: [
			suspendedDelays isEmpty 
				ifTrue: [ activeDelay := nil ] 
				ifFalse: [ 	activeDelay := suspendedDelays removeFirst ]] 
		ifFalse:[
			suspendedDelays remove: aDelay ifAbsent: []].
	
	aDelay beingWaitedOn: false.