obsoleteSubclasses
	"Answer the receiver's subclasses."

	self theNonMetaClass == nil
		ifTrue: [ ^ #() ].
	^ self theNonMetaClass obsoleteSubclasses
		select: [ :aSubclass | aSubclass isMeta not ]
		thenCollect: [ :aSubclass | aSubclass theMetaClass ]	"Metaclass allInstancesDo:
		[:m | Compiler evaluate: 'subclasses:=nil' for: m logged: false]"