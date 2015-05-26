testOptionParsing
	|generator|
	generator := NBNativeCodeGen new.
	generator parseOptions: #(optStringOrNil).
	self assert: generator optStringOrNil.
	generator parseOptions: #(- optStringOrNil).
	self deny: generator optStringOrNil.
	
	"Lets move on to something a bit more advanced..."
	self deny: generator optNotThere.
	generator parseOptions: #(+ optEncoding: utf8 optStringOrNil  - optNotThere).
	self assert: generator optEncoding equals: #utf8.
	self assert:generator optStringOrNil.
	
	generator parseOptions: #(- optEncoding).
	self deny: generator optEncoding.
	
	