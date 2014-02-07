execute
	"I expect that target is an MCVersion"
	| cm |
	cm := MetacelloToolBox compiledMethodForVersion: target.
	Smalltalk tools browser 
			fullOnClass: cm methodClass
			selector:  cm selector