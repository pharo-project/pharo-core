lastClasses: anInteger

	"I return the last anInteger classes modified"
	| result tempList |
	result := WeakOrderedCollection new.
	tempList := self methodReferenceList sorted: [:a :b | a timeStamp >= b timeStamp].
	
	tempList do: [:method |
		result size = anInteger ifTrue: [ ^ result ].
		method methodClass ifNotNil:[:class |
		class := method methodClass theNonMetaClass.
		(result includes: class) ifFalse: [ result add: class ]]].
	^ result