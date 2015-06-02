errorSending: data startingAt: startIndex count: aCount toHost: hostAddress port: portNumber
	"If there are known primitive failure reasons when sending that can be specified using more exact errors, discern them here"

	((self isBroadcastAddress: hostAddress) and: [ ((self getOption: 'SO_BROADCAST') last = 1) not ])
		ifTrue: ["Only applicable to UDP sockets, TCP does not have broadcast" ^ (NoBroadcastAllowed new messageText: 'Sending to ' , hostAddress printString , ' without SO_BROADCAST set') signal ].
	^ self primitiveFailed