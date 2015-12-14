createHatchBrush: aStyle color: aColor 
	"Creates an instance of the receiver that has the specified hatch pattern and color"
	^ self apiCreateHatchBrush: aStyle with: aColor asColorref