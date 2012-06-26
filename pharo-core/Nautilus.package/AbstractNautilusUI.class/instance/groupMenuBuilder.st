menu pragmas
groupMenuBuilder

	^ PragmaMenuBuilder withAllPragmaKeywords: {self groupFixPragma. self groupPragma} model: self