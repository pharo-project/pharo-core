morphic ui
repositories
	|repositories|
	repositories := self repositoryGroup repositories.
	
	"filter the repository list if there is a search string"
	repositoryPattern ifNotNil: [
		repositories := repositories select: [ :each| repositoryPattern search: each description]].
	^ repositories