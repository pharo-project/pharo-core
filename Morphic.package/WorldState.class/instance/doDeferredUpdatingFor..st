update cycle
doDeferredUpdatingFor: aWorld
        "If this platform supports deferred updates, then make my canvas be the Display (or a rectangular portion of it), set the Display to deferred update mode, and answer true. Otherwise, do nothing and answer false. One can set the class variable DisableDeferredUpdates to true to completely disable the deferred updating feature."
	| properDisplay |
	PasteUpMorph disableDeferredUpdates ifTrue: [^ false].
	(Display deferUpdates: true) ifNil: [^ false].  "deferred updates not supported"
	properDisplay := canvas notNil and: [canvas form == Display].
	aWorld == World ifTrue: [  "this world fills the entire Display"
		properDisplay ifFalse: [
			aWorld viewBox: Display boundingBox.    "do first since it may clear canvas"
			self canvas: (Display getCanvas copyClipRect: Display boundingBox).
		]
	] ifFalse: [  "this world is inside an MVC window"
		(properDisplay and: [canvas clipRect = aWorld viewBox]) ifFalse: [
			self canvas:
				(Display getCanvas copyOffset: 0@0 clipRect: aWorld viewBox)
		]
	].
	^ true
