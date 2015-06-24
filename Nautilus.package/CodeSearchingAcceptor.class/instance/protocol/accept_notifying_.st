accept: aText notifying: aController
	| environment tree rule result |

	self model sourceTextModel clearUserEdits.
	
	environment := self model browsedEnvironment.
	tree := self class compiler evaluate: aText.
	
	rule := CodeSearchingRule new
		matcher: tree;
		yourself.
	
	result := RBSmalllintChecker runRule: rule onEnvironment: environment.
	(MethodBrowser new methods: result result methods) openWithSpec 