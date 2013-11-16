usingClassicSocketStreamsOnWindowsDo: block
	| originalSocketStreamClass |
	originalSocketStreamClass := ZnNetworkingUtils default socketStreamClass.
	OSPlatform current isWindows
		ifTrue: [ ZnNetworkingUtils default socketStreamClass: SocketStream ].
	block ensure: [ 
		ZnNetworkingUtils default socketStreamClass: originalSocketStreamClass ]