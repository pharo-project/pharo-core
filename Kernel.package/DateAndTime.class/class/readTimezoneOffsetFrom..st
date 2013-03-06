input
readTimezoneOffsetFrom: stream
	"Read and return an optional timezone offset in the form of 
	[+|-]hh[separator]mm[separator]ss or Z from stream as a duration.
	Separator can be a colon or a space.
	If there is no offset, return the local offset."

	| sign hour minute second |
	(stream peekFor: $Z) ifTrue: [ ^ Duration zero ].
	^ ('+-' includes: stream peek)
		ifTrue: [
			sign := stream next = $- ifTrue: [ -1 ] ifFalse: [ 1 ].
			hour := Integer readFrom: stream.
			(': ' includes: stream peek)
				ifFalse: [ minute := 0 ]
				ifTrue: [ 
					stream next.
					minute := Integer readFrom: stream.
					(': ' includes: stream peek)
						ifFalse: [ second := 0 ]
						ifTrue: [ 
							stream next.
							second := Integer readFrom: stream ] ].
			Duration seconds: sign * ((hour * 3600) + (minute * 60) + second) ]
		ifFalse: [ self localOffset ]