hash
	^self species hash bitXor: 
		(self leftFraction bitXor: 
		(self leftOffset bitXor: 
		(self topFraction bitXor:
		(self topOffset bitXor: 
		(self rightFraction bitXor: 
		(self rightOffset bitXor: 
		(self bottomFraction bitXor: 
		self bottomOffset)))))))