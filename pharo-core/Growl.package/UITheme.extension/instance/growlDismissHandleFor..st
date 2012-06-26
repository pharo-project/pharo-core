*growl
growlDismissHandleFor: aGrowlMorph
	| handle form image |
	handle := EllipseMorph newBounds: ((3@3) extent: (20@20))  color: Color white.
	handle borderColor: handle color muchDarker.
	handle wantsYellowButtonMenu: false.
	form := self "haloDismissIcon" windowCloseForm.
	form ifNotNil: [
		image := ImageMorph new.
		image image: form.
		image color: handle color makeForegroundColor.
		image lock.
		handle addMorphCentered: image].
	^ handle