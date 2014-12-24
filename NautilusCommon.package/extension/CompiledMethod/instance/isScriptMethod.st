isScriptMethod

    ^ (self methodClass isMeta) and: [ 
			self numArgs isZero and: [ self pragmas anySatisfy: [:each | each keyword = #script ]]]