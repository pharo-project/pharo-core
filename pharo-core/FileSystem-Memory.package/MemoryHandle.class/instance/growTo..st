private
growTo: anInteger
	| path |
	path := reference fileSystem resolve: reference path.
	bytes := reference fileSystem store growFile: path to: anInteger + self sizeIncrement