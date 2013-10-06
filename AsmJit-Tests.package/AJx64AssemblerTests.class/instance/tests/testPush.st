testPush
	"lower bank 64bit register"		
	self assert: [:a | a push: a RSP ]
		bytes: #[ 16r54 "16r50 + RSP index" ].