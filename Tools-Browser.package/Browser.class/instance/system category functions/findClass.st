findClass
	"Search for a class from a pattern or from the recent list"
	| foundClassOrTrait  |

	self okToChange ifFalse: [^ self classNotFound].
	
	foundClassOrTrait := SearchFacade classSearch chooseFromOwner: self dependents first.
	foundClassOrTrait ifNil: [^ self classNotFound].
 	self selectCategoryForClass: foundClassOrTrait.
	self selectClass: foundClassOrTrait
