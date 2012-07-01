instance creation
family: f size: s

	^ self allInstances detect: [:a | a familyName = f and: [a pointSize = s]] ifNone: [nil].
