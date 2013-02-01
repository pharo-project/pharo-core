draw
drawOn: aCanvas in: rect offset: o
	"Draw the highlight on the given canvas for the given rectangle."

	self setLineHighLights.
	lineHighligths do: [:e | e drawOn: aCanvas in: rect offset: o ]