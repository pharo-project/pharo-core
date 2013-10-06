findClass
	"Search for a class from a pattern or from the recent list"
	| foundClassOrTrait recentList |

	self okToChange ifFalse: [^ self classNotFound].
	recentList := RecentClasses select: [ :n | Smalltalk globals includesKey: n ].
	
	foundClassOrTrait := SearchFacade classSearch chooseFromOwner: self dependents first.
	foundClassOrTrait ifNil: [^ self classNotFound].
 	self selectCategoryForClass: foundClassOrTrait.
	self selectClass: foundClassOrTrait
