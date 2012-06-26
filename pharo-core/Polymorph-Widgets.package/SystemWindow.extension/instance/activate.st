*Polymorph-Widgets
activate
	"Activate the owner too."

	|mo mc|
	mo := self modalOwner.
	mc := self modalChild.
	mc isNil
		ifFalse: [mc owner notNil ifTrue: [
				mc activate.
				^mc modalChild isNil ifTrue: [mc indicateModalChild]]].
	(isCollapsed not 
		and: [ self paneMorphs size > 1 and: [self splitters isEmpty]])
			ifTrue: [self addPaneSplitters].
	TopWindow isNil ifFalse: [
		TopWindow rememberKeyboardFocus: ActiveHand keyboardFocus].
	super activate.
	self isEmbedded ifFalse: [
		self basicActivate].	
	self rememberedKeyboardFocus
		ifNil: [(self respondsTo: #navigateFocusForward)
				ifTrue: [self navigateFocusForward]]
		ifNotNil: [|m|
				m := self rememberedKeyboardFocus.
				m world
						ifNil: [self rememberKeyboardFocus: nil] "deleted"
						ifNotNil: [
							m wantsKeyboardFocus
								ifTrue: [m takeKeyboardFocus]
								ifFalse: [(self respondsTo: #navigateFocusForward)
											ifTrue: [self navigateFocusForward]]]].
	(mo notNil and: [mo isKindOf: SystemWindow])
		ifTrue: [mo bringBehind: self]