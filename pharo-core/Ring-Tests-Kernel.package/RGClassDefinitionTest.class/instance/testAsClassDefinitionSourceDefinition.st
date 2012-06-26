testing
testAsClassDefinitionSourceDefinition

	| newClass |
	newClass:= Trait asRingDefinition.
	self assert: (newClass definitionSource =  'TraitDescription subclass: #Trait
	uses: TBehaviorCategorization
	instanceVariableNames: ''name environment classTrait category''
	classVariableNames: ''''
	poolDictionaries: ''''
	category: ''Traits-Kernel''').
	
	self assert: (newClass theMetaClass definitionSource =  'Trait class
	uses: TBehaviorCategorization classTrait
	instanceVariableNames: ''''').
	