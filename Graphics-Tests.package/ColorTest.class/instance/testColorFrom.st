testing
testColorFrom
	self assert: ((Color colorFrom: #white) asHTMLColor sameAs: '#ffffff').
	self assert: ((Color colorFrom: #(1.0 0.5 0.0)) asHTMLColor sameAs: '#ff8000').
	self assert: ((Color colorFrom: (Color white)) asHTMLColor sameAs: '#ffffff').
	self assert: ((Color colorFrom: '#FF8800') asHTMLColor sameAs: '#ff8800').
	self assert: ((Color colorFrom: '#222222') asHTMLColor sameAs: '#222222').