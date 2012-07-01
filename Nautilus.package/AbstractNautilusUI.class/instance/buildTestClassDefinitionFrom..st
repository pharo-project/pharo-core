test creation
buildTestClassDefinitionFrom: aClass

	^ 'TestCase subclass: ', (self buildTestClassNameFrom: aClass) printString, '
	instanceVariableNames: ''''
	classVariableNames: ''''
	poolDictionaries: ''''
	category: ''',(self buildTestPackageNameFrom:aClass),''''