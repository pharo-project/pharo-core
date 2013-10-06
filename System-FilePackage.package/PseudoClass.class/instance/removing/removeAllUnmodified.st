removeAllUnmodified
	| stClass |
	self exists ifFalse:[^self].
	self removeUnmodifiedMethods: self selectors.
	stClass := self realClass.
	(self hasDefinition and:[stClass definition = self definition]) ifTrue:[definition := nil].
	(self hasComment and:[stClass comment asString = self commentString]) ifTrue:[ self classComment: nil].
	metaClass isNil ifFalse:[metaClass removeAllUnmodified].