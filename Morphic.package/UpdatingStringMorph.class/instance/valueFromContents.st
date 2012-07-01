accessing
valueFromContents
	"Return a new value from the current contents string."

	format = #symbol ifTrue: [^ lastValue].
	format = #string ifTrue: [^ contents].
	^ self class evaluatorClass evaluate: contents
