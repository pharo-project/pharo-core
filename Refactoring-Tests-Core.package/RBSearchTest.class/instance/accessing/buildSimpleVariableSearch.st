buildSimpleVariableSearch
	self 
		createSearchWith: 'result'
		selectors: #(
				#checkClass:
				#checkMethod:
				#isEmpty
				#problemCount
				#resetResult
				#resetResult
				#resetResult
				#result
				#result:
				#resultClass:
				#viewResults
			)
		inClass: RBBasicLintRuleTest