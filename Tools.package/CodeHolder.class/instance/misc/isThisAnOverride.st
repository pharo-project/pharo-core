isThisAnOverride
	"Answer whether any superclass of my selected class implements my selected selector"
	| aName aClass |
	aName := self selectedMessageName ifNil: [^ false].
	aClass := self selectedClassOrMetaClass ifNil: [^ false].
	aClass allSuperclassesDo: [ :cls | (cls includesSelector: aName) ifTrue: [ ^true ]].
	^ false