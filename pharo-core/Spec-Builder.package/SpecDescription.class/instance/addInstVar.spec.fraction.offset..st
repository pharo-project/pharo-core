protocol
addInstVar: name spec: spec fraction: fraction offset: offset
	| col sub |
	
	spec
		ifNil: [ sub := {#model. name asSymbol} ]
		ifNotNil: [ sub := {#model. name asSymbol. spec asSymbol.} ].
	
	col := {#add:.	{sub.
											#layout:. 	{#LayoutFrame.
																#fractions:offsets:.	 fraction.	offset. }}}.
	adds add: col.