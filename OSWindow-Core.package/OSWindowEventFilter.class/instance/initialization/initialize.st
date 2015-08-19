initialize
	self reinitializeGesture.
	allowingDictionary := Dictionary new.
	self initializeDictionnary.
	gestures := OrderedCollection new
			add: OSTouchTwoFingersScroll new;
			add: OSTouchTwoFingersPinch new;
			add: OSTouchThreeFingersSwipe new;
			add: OSTouchTwoFingersRotation new;
			add: OSTouchOneFingerDoubleTap new;
			yourself.
	gestures do: [ :each | each eventHandler: self ].