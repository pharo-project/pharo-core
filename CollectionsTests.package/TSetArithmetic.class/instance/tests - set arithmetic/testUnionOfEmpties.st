testUnionOfEmpties
	"self debug: #testUnionOfEmpties"
	
	self assert:  (self empty union: self empty) isEmpty.
	
	