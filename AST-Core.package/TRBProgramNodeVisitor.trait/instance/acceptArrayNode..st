visiting rb nodes
acceptArrayNode: anArrayNode 
	anArrayNode children do: [:each | self visitNode: each]