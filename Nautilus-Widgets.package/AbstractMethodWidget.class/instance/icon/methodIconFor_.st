methodIconFor: aMethod

	| actions button action |
	button := nil.
	MethodsIconsCache
		at: aMethod
		ifPresent: [:icon | 
			icon isArray ifTrue: [ ^ self rebuildUpAndDownArrowIconFrom: icon].
			icon class == IconicButtonStateHolder ifFalse: [ ^ icon ].
			^ icon asIcon ].

	actions := AbstractMethodIconAction allSubclasses collect: [:class | class for: aMethod in: self model ].
	actions sort: [:a :b | a actionOrder < b actionOrder ].
	action := actions 
		detect: [:each | each isActionHandled ] 
		ifNone: [ self flag: 'should never happend' ]. 
	
	"actionIcon need to be invoked before actionStateToCache"
	button := action actionIcon.
	MethodsIconsCache at: aMethod put: action actionStateToCache.
	^ button