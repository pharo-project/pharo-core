CollectionRootTest subclass: #HeapTest
	uses: TAddTest + TGrowableTest + TConvertTest + TConvertAsSortedTest + TConvertAsSetForMultiplinessIdentityTest + TCopyTest + TSetArithmetic + TRemoveForMultiplenessTest + TOccurrencesForMultiplinessTest + (TCreationWithTest - {#testOfSize}) + TIncludesWithIdentityCheckTest
	instanceVariableNames: 'collectionWithElement otherCollection nonEmpty empty elementNotIn collectResult expectedElementByDetect speciesClass elementTwiceIn doWithoutNumber element expectedSizeAfterReject collectionNotIncluded nonEmpty5ElementsWithoutDuplicate sameAtEndAndBegining nonEmpty1Element floatCollection indexArray subCollection duplicateElement collectionWithDuplicateElement collectionWith4Elements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionsTests-Sequenceable'