example
	<example>
	
	(self new on: { 'First' -> '1' . 'Second' -> '2' . 'Third' -> { 'Sub First' -> '3-1' . 'Sub Second' -> '3-2' } })
		asBrickedMorph
			extent: 300@400;
			openInWindow
	