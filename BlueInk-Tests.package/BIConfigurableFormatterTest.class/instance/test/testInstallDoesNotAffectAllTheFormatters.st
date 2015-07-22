testInstallDoesNotAffectAllTheFormatters
	| formatter newformatter |
	formatter := BIConfigurableFormatter new.
	self deny: (formatter cascadedMessageInsideParentheses). 
	
	formatter installNewValueInContext: { (#cascadedMessageInsideParentheses: -> true) }.
	self assert: (formatter cascadedMessageInsideParentheses). 
	
	newformatter := BIConfigurableFormatter new.
	self deny: (newformatter cascadedMessageInsideParentheses)