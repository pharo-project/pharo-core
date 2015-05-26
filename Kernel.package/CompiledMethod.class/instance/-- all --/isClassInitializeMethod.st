isClassInitializeMethod

    ^ (self methodClass isMeta) and: [ 
		self selector = #initialize ]