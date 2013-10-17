valueFromContents
	"Return a new value from the current contents string."

	format = #symbol ifTrue: [^ lastValue].
	format = #string ifTrue: [^ contents].
	^ self class compiler evaluate: contents
