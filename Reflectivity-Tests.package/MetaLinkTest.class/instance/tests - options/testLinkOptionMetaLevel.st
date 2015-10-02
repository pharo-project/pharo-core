testLinkOptionMetaLevel
	| link |
	link := MetaLink new 
		options: #(+ optionMetalevel).
	
	self assert: link optionMetalevel.
	self assert: link level = 0.