testArrayBasic

	self assert: (self interpret: '#(12 #de 1.2)') equals: #(12 #de 1.2).
	self assert: (self interpret: '{12 . #de . 1.2}') equals: {12 . #de . 1.2}.
	