accessing
criticsOf: aRule

	^ (rule leaves detect: [:r |
		r class = aRule class]) critics