private
executeShould: aBlock inScopeOf: anExceptionalEvent
	^[aBlock value.
 	false]
		on: anExceptionalEvent
		do: [:ex | ex sunitExitWith: true]