testEnvironmentOfOrganization
	"self debug: #testEnvironmentOfOrganization"
	
	| aDictionary otherDictionary |	
	aDictionary := SystemDictionary withOrganizer: SystemOrganizer new.
	self assert: (aDictionary organization environment = aDictionary)
	