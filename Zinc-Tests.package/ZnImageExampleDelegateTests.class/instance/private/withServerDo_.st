withServerDo: block
	| server |
	server := ZnServer on: 1700 + 10 atRandom.
	[ 
		server start.
		self assert: server isRunning & server isListening.
		server delegate: ZnImageExampleDelegate new.
		block cull: server
	] 
		ensure: [ server stop ]