*Tools-Browser
browseAllUsersOfTrait: aTrait
	"Create and schedule a message browser on each class or trait that imports aTrait"

	^ Smalltalk tools classListBrowser new
		initForClassesNamed: (aTrait users collect: #name) asArray sort
		title: 'Users of trait ' , aTrait theNonMetaClass name
	