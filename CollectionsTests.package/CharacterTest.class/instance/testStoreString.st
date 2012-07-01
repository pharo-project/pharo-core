tests
testStoreString
	self assert: $a storeString = '$a'.
	self assert: $5 storeString = '$5'.
	self assert: $@ storeString = '$@'.

	self assert: Character cr storeString = 'Character cr'.
	self assert: Character lf storeString = 'Character lf'.
	self assert: Character space storeString = 'Character space'.

	self assert: (Character value: 0) storeString = '(Character value: 0)'.
	self assert: (Character value: 17) storeString = '(Character value: 17)'.