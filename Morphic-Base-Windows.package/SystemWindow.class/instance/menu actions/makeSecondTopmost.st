makeSecondTopmost
	| aWorld nextWindow |
	aWorld := self world.
	nextWindow := aWorld submorphs 
				detect: [:m | (m isSystemWindow) and: [m ~~ self]]
				ifNone: [^self].
	nextWindow activate.
	aWorld addMorph: self behind: nextWindow