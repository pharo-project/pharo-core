private
isObsoleteManifest
	^ manifestClass class methodDictionary isEmpty 
		or: [manifestClass class methodDictionary contains: [:method |
				((method selector = #rejectClass) or: [method selector = #rejectRules]) 
					ifTrue: [false]
					ifFalse: [
			(manifestClass perform: (method selector)) contains: [ :each | 
				(each first first) = (Character value: 40)]]]  ]