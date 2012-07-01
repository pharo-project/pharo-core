printing
printOn: stream
	"[user-info@]host[:port] where [...] denote optional parts"
	
	userInfo ifNotNil: 
			[stream nextPutAll: userInfo.
			stream nextPut: $@].
	stream nextPutAll: host.
	port ifNotNil: 
			[stream nextPut: $: .
			port printOn: stream] 