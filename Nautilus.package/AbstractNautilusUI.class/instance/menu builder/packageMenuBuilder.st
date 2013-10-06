packageMenuBuilder

	^ PragmaMenuBuilder withAllPragmaKeywords: {self packageFixPragma. self packagePragma} model: self