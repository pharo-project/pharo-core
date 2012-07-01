halo handling
obtainHalo: aHalo
	"Used for transfering halos between hands"
	| formerOwner |
	self halo == aHalo ifTrue:[^self].
	"Find former owner"
	formerOwner := self world hands detect:[:h| h halo == aHalo] ifNone:[nil].
	formerOwner ifNotNil:[formerOwner releaseHalo: aHalo].
	self halo: aHalo