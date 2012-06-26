geometry etoy
rotationCenter
	| pt |
	pt := self transform localPointToGlobal: super rotationCenter.
	^pt - bounds origin / bounds extent asFloatPoint