initWithContents: aString font: aFont emphasis: emphasisCode
	"Grrr, why do they do basicNew?"
	
	colorMap := self defaultColorMap.
	super initWithContents: aString font: aFont emphasis: emphasisCode