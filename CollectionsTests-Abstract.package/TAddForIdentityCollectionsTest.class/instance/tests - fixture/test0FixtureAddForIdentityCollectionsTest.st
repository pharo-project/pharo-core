test0FixtureAddForIdentityCollectionsTest
	
	self shouldnt: [ self identityCollectionWithElementsCopyNotIdentical  ] raise: Error.
	self identityCollectionWithElementsCopyNotIdentical  do: [ : each | self deny: each == each copy ].