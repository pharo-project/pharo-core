classification
classifyAll: aCollectionOfMethods
	| classifier |
	classifier := MethodClassifier new.
	aCollectionOfMethods do: [ :method |
		classifier classify: method ]