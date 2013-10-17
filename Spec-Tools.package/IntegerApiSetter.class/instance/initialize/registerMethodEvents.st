registerMethodEvents

	method whenChangedDo: [ :s |
			selector text: s asString.
			self model ifNotNil: [ :m || mth |
				mth := (m class lookupSelector: s).
				self updateSliderWith: mth.
				choice help: mth comment ]]