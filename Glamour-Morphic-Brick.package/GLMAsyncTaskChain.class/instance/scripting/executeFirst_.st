executeFirst: anInteger

	(self tasks first: (anInteger min: self tasks size))
		do: #execute