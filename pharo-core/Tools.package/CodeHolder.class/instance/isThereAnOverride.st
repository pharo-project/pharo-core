misc
isThereAnOverride
	"Answer whether any subclass of my selected class implements my 
	selected selector"
	| aName aClass |
	aName := self selectedMessageName ifNil: [^ false].
	aClass := self selectedClassOrMetaClass ifNil: [^ false].
	aClass allSubclassesDo: [ :cls | (cls includesSelector: aName) ifTrue: [ ^true ]].
	^ false