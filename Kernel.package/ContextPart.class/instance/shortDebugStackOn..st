printing
shortDebugStackOn: aStream
	"print the top ten contexts on my sender chain."

	^ self debugStack: 10 on: aStream