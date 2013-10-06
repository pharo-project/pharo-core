testReceiverConstant
	| text context |
	text := 'testIt
	15r16 printS'.
	context := self createContextFor: text at: text size.
	self assert: context receiverClass == Number.
	text := 'testIt
	''test'' printS'.
	context := self createContextFor: text at: text size.
	self assert: context receiverClass == String.
	text := 'testIt
	true ifTrue:'.
	context := self createContextFor: text at: text size.
	self assert: context receiverClass == True.
	text := 'testIt
	false  "this is it"
		printStr'.
	context := self createContextFor: text at: text size.
	self assert: context receiverClass == False.
	text := 'testIt
	a _ [ :test | test * test ] 
		v'.
	context := self createContextFor: text at: text size.
	self assert: context receiverClass == BlockClosure.
	text := 'testIt
	$c as'.
	context := self createContextFor: text at: text size.
	self assert: context receiverClass == Character.
	text := 'testIt
	#gaga as'.
	context := self createContextFor: text at: text size.
	self assert: context receiverClass == Symbol.
	text := 'testIt
	#( 1 2 3) as'.
	context := self createContextFor: text at: text size.
	self assert: context receiverClass == Array.
