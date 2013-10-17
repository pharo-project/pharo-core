testPrintHtmlString
	"self debug: #testPrintHtmlString"

	Color white printHtmlString.
	self assert: Color white printHtmlString = 'FFFFFF'.
	self assert: Color red printHtmlString = 'FF0000'.
	self assert: Color black printHtmlString = '000000'