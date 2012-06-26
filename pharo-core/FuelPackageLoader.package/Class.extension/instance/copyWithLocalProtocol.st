*FuelPackageLoader
copyWithLocalProtocol

	| copy |
	copy := self copy.
	"When we copy the methodDict, the methods are not copies. Since we modify them (like in #rebindClassVariablesInMethods) we cannot modify the original methods. Hence, we have to copy also the methods"
	copy copyMethods.
	copy organization: organization deepCopy.
	copy class organization: self classSide organization deepCopy.
	"Class comments are stored in RemoteString that will be broken in different images. By default they are nilled out."
	copy organization classComment: nil.
	copy class organization classComment: nil.
	copy environment: environment.
	copy basicCategory: category.	
	copy traitComposition: self traitComposition.
	copy classSide traitComposition: self classSide traitComposition.
	copy removeForeignProtocol.
	copy classSide removeForeignProtocol.
	copy cleanUpClassVariables.
	copy cleanUpInstanceVariables.
	"Class variables were set to nil. There can be class methods that hold wrong values and have to be updated to the new classPool."
	copy rebindClassVariablesInMethods.
	^copy