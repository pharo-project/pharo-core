loading
notifyBehaviorAddition: aBehavior

	 | category |

	category := aBehavior category ifNil: ['UNKNOWN'].
	"It looks like Traits use the same even than classes"
	SystemChangeNotifier uniqueInstance classAdded: aBehavior inCategory: category asSymbol.

