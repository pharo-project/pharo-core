methodsFor: aClass

	^ aClass methods sort: [:a :b | a selector < b selector ]