initialization
retrieveItems

	^ self model 
		ifNil: [ #() ]
		ifNotNil: [:m | ((m apiMethods sort: [:a :b | a selector < b selector ]) collect: [:e | self buildItemFor: e ]) reject: [:e | e isNil ]]