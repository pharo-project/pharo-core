toolbuilder
color

	| flags aColor |
	flags := 0.
	self isThisAnOverride ifTrue: [ flags := flags bitOr: 4 ].
	currentCompiledMethod sendsToSuper ifTrue: [ flags := flags bitOr: 2 ].
	self isThereAnOverride ifTrue: [ flags := flags bitOr: 1 ].
	aColor := {
		Color transparent.
		Color tan lighter.
		Color green muchLighter.
		Color blue muchLighter.
		Color red muchLighter.	"has super but doesn't call it"
		(Color r: 0.94 g: 0.823 b: 0.673).	"has sub; has super but doesn't call it"
		Color green muchLighter.
		Color blue muchLighter.
	} at: flags + 1.

	^aColor