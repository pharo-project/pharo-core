nonFloatSubbricks: aBrick

	^ aBrick subbricks select: [ :each | each layout floating = #none ]