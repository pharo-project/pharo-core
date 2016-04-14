withLinkContextFor: anExample do: aBlock
	^ (linkContext := GTExampleLinkContext new 
		example: anExample;
		yourself) do: aBlock