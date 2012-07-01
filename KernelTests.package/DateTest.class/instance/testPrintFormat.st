tests
testPrintFormat

	| format monthTypes |
	format := DatePrintFormatTester on: january23rd2004.
	format dayPosition: 1 monthPosition: 2 yearPosition: 3 delimiter: $/ monthType: 1 yearType: 1.
	format shouldEqual: '23/1/2004'.
	
	format delimiter: $-.
	format shouldEqual: '23-1-2004'.
	
	format	monthType: 1 shouldPrintAs: 1 asString "index".
	format monthType: 2 shouldPrintAs: 'Jan'.
	format monthType: 3 shouldPrintAs: 'January'.
	
	"Out of range month types leave month blank"
	format monthType: 4.
	format shouldEqual: '23--2004' "no month".

	format	yearType: 1 shouldPrintAs: '2004'.
	format yearType: 2 shouldPrintAs: '04'.
	
	"Out of range year types -> short year"
	format yearType: 3 shouldPrintAs: '04'.