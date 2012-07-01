accessing
sourceString
	^self fromSource asText
		addAttribute: TextEmphasis struckOut;
		addAttribute: TextColor blue;
		yourself