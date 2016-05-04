testEcho
	| socket message result |
	
	OSPlatform current isMacOS ifTrue: [ ^ self skip ].
	"Temporary for Pharo5 release. see https://pharo.fogbugz.com/f/cases/18137/"
	socket := Socket newUDP.
	[ 
		self withUDPEchoServer: [ :process |
			message := 'Testing ', 99 atRandom asString. 
			socket sendUDPData: message toHost: self localhost port: self port.
			result := self receiveUDPDataFrom: socket.
			self assert: result first equals: message.
			self assert: result second equals: self localhost.
			self assert: result third equals: self port.
			socket sendUDPData: #quit toHost: self localhost port: self port ]  
	] ensure: [ socket closeAndDestroy ]