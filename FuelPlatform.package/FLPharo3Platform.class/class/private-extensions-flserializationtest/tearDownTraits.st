tearDownTraits
	<flExtensionOf: #FLSerializationTest>
	(Smalltalk at: #SystemAnnouncer) uniqueInstance suspendAllWhile: [
		self cleanUpTraits ]