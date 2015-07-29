hasBindingOf: aString
	"this method should not be defined here, normally when the interaction model of the RubScrolledTextModel is set to nil the hasBindingOf: message is not sent. Check method RubScrolledTextModel hasBindingOf:. Now if we remove this method, we get an error with RubScrolledTextModel  which has a LessonView as interaction model. I have no idea where it is set."

	^ false