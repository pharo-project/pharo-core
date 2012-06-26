public
truncateTo: anInteger
	| path |
	path := reference fileSystem resolve: reference path.
	bytes := reference fileSystem store replaceFile: path in: [ :all  | all first: anInteger ].
	size := anInteger