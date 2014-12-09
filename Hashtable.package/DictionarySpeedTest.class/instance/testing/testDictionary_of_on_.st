testDictionary: aDictionaryClass of: anObjectClass on: aStream 
	| test ord |
	test := aDictionaryClass new.
	[ test size >= self testsize] whileFalse: [
			ord := OrderedCollection new: self stepsize.
			self stepsize timesRepeat: [ 
				test at: ( ord add: anObjectClass new ) put: nil ].
			aStream
				nextPutAll: test size asString;
				tab.
			aStream nextPutAll:
				[
					10 timesRepeat: [ 
						ord do: [ :each | test at: each ] ]
				] timeToRun asString.
		aStream cr ]