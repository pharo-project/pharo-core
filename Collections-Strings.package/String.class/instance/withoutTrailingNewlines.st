converting
withoutTrailingNewlines
	"strip the last cr/lf character if it exists"
	^ self trimRight: [ :char| char = Character cr or: [ char = Character lf]]