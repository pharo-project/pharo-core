socks5
socks5RequestReply

	| response |
	response := self waitForReply: 4 for: self defaultTimeOutDuration.
	"Skip rest for now."
	(response at: 4) = self hostIPCode
		ifTrue: [self waitForReply: 6 for: self defaultTimeOutDuration].
	(response at: 4) = self qualifiedHostNameCode
		ifTrue: [self skipQualifiedHostName].
	(response at: 4) = self hostIP6Code
		ifTrue: [self waitForReply: 18 for: self defaultTimeOutDuration].
	(response at: 2) ~= 0
		ifTrue: [^self socksError: 'Connection failed: ', (response at: 2) printString].
