repositories
	| repositories |
	repositories := self repositoryGroup repositories.
	
	"filter the repository list if there is a search string"
	repositoryPattern ifNotEmpty: [
		repositories := repositories select: [ :each| each description asLowercase includesSubstring: repositoryPattern ]].
	^ repositories