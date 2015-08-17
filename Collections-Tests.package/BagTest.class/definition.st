CollectionRootTest subclass: #BagTest
	uses: TAddTest + TIncludesWithIdentityCheckTest + TCloneTest + TCopyTest + TSetArithmetic + TConvertTest + TAsStringCommaAndDelimiterTest + TRemoveForMultiplenessTest + TPrintTest + TConvertAsSortedTest + TConvertAsSetForMultiplinessTest + TConcatenationTest + TStructuralEqualityTest + (TCreationWithTest - {#testOfSize}) + TOccurrencesForMultiplinessTest
	instanceVariableNames: 'empty nonEmpty collectResult emptyButAllocatedWith20 elementExistsTwice element collectionWithElement collectionIn collectionNotIn collectionOfString elementNotIn collectionWithCharacters otherCollectionWithoutEqualElements collectionWithoutNilMoreThan5'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Collections-Tests-Unordered'