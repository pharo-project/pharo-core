moving changes
methodsWithAnyInitialsOtherThan: myInits
	"Return a collection of method refs whose author appears to be different from the given one, even historically"
	| slips |
	slips := Set new.
	self changedClasses do: [:aClass |
		(self methodChangesAtClass: aClass name) associationsDo: [ :mAssoc | | method |
			(#(remove addedThenRemoved) includes: mAssoc value) ifFalse:
				[method := aClass compiledMethodAt: mAssoc key ifAbsent: [nil].
				method ifNotNil: [
					(aClass changeRecordsAt: mAssoc key) do: [ :chg | | aTimeStamp |
						aTimeStamp := chg stamp.
						(aTimeStamp notNil and: [(aTimeStamp beginsWith: myInits) not])
							ifTrue: [slips add: aClass name , ' ' , mAssoc key]]]]]].
	^ slips