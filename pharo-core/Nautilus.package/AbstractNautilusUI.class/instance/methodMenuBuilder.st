menu pragmas
methodMenuBuilder

	^ PragmaMenuBuilder withAllPragmaKeywords: {self commonPragma. self methodPragma} model: self