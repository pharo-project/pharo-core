removeCategory: aCategory inClass: aClass

	aCategory ifNil: [ ^ self ].
	self okToChange ifFalse: [ ^ self ].
	
	(aClass organization listAtCategoryNamed: aCategory) isEmpty
		ifTrue: [
			aClass removeProtocol: aCategory.
			^ true ].
		
	(self confirm: 'Are you sure you want to
remove the protocol ', aCategory,'
and all its methods?')
		ifTrue: [
			aClass removeProtocol: aCategory.
			^ true ].
	^ false