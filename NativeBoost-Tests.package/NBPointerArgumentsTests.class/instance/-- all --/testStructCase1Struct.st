testStructCase1Struct 
	|value|
	value := 12345678.
	self assert:  (self readStructPtrCase1: (self structValue: value)) = value.