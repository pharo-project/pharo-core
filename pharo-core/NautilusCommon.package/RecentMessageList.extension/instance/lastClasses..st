*NautilusCommon
lastClasses: anInteger

	"I return the last anInteger classes modified"
	| result tempList |
	result := OrderedCollection new.
	tempList := self methodReferenceList sorted: [:a :b | a timeStamp >= b timeStamp].
	
	tempList do: [:method || class |
		result size = anInteger ifTrue: [ ^ result ].
		class := method methodClass theNonMetaClass.
		(result includes: class) ifFalse: [ result add: class ]].
	^ result