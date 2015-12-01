do: oneArgBlock
	mutex critical: [ (collectors sorted: [ :a :b | a creationTime < b creationTime ]) do: oneArgBlock ]