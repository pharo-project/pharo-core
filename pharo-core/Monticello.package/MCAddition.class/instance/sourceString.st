accessing
sourceString
	^(self toSource asText)
		addAttribute: TextColor red;
		yourself