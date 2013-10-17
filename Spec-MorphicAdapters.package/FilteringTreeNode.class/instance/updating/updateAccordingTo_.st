updateAccordingTo: aFilter 

	(aFilter keepTreeNode: self) 
		ifFalse: [
			self contents do: [ :n | n updateAccordingTo: aFilter ].
			self contents removeAllSuchThat: [ :n | (aFilter keepTreeNode: n) not  and: [ n isEmpty] ] ]