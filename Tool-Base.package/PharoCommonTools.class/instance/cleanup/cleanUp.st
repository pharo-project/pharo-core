cleanUp
	recentTools keysAndValuesDo:[:name :toolSet|
	toolSet do:[:tool | tool isObsolete ifTrue:[ toolSet remove: tool]]]