testClassRespectsPolymorphismWithTrait
	| repeatedMethodsThatDoNotAccessInstanceVariables differentMethodsWithSameSelector |
	"If the method is in Class and Trait it must access some instance variable, otherwise the method can be implemented in TClass"
	repeatedMethodsThatDoNotAccessInstanceVariables := self
		repeatedMethodsThatDoNotAccessInstanceVariablesBetween: Class
		and: Trait.
	self assert: repeatedMethodsThatDoNotAccessInstanceVariables size equals: 0.	"If the method is in Class and Trait, and they have different implementations, it must be declared in TClass as an explicitRequirement method"
	differentMethodsWithSameSelector := self differentMethodsWithSameSelectorBetween: Class and: Trait.
	differentMethodsWithSameSelector
		do: [ :selector | 
			(TClass >> selector) sourceCode.
			self assert: (TClass >> selector) isRequired ].	"Only a few methods are allowed to belong to one class and not to the other"	"It would be excelent to remove these methods somehow, but is NOT good idea add methods to this list"	"traitComposition traitComposition: localSelectors localSelectors: basicLocalSelectors basicLocalSelectors -> accessors to instance variables that do not belong to Trait"	"baseClass classClass have their equivalent in Trait, but the problem is the name of the selector, they are bad names"	"addInstVarNamed: for traits is implemeted in TraitDescription"
	self
		assert: (Class localSelectors difference: Trait localSelectors)
		equals:
			#(#traitComposition: #baseClass #basicLocalSelectors #classClass #localSelectors #localSelectors: #basicLocalSelectors: #traitComposition #addInstVarNamed:)
				asSet.	"classTrait: isClassTrait classTrait isBaseTrait baseTrait -> they have their equivalent for classes but with different name"	"nautilusIcon initialize is implemented differently for traits, classes have their implentation in Object"
	self
		assert: (Trait localSelectors difference: Class localSelectors)
		equals: #(#classTrait: #isClassTrait #classTrait #nautilusIcon #isBaseTrait #initialize #baseTrait) asSet