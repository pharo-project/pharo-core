testing
testAlltogether
	"Initialize for all known error conditions.
	Note that the chunk to be evaluated are separated by %, and expected errors enclosed in back quotes."
	
	self setUpForErrorsIn: '  "First, the senders of #offEnd:"
#` Unmatched bracket ->`[ 1 2 %
#[ 1 2 ` 8-bit integer or right bracket expected ->`256 4]%
$` A Character was expected ->`%
1+2   ` Unmatched comment quote ->`"unfinished comment%
#` Unmatched parenthesis ->`( 1 2%
#` Unmatched parenthesis ->`( 1 2 %
^nil printString ,  ` Unmatched string quote ->`''unfinished string%
	"Then, the senders of #expected:"
2r` a digit between 0 and 1 expected ->`3%
| x | x := ` Expression expected ->`%
[ :x : ` Argument name expected ->`1]%
[ :x ` Vertical bar expected ->`x + 1 ]%
[:x | 1 ` Period or right bracket expected ->`( 1 ) ]%
{ 1. 2` Period or right brace expected ->`%
{ 1. 2 ` Period or right brace expected ->`%
{ 1. 2 ` Period or right brace expected ->`3 %
{ 1. 2. ` Variable or expression expected ->`| x | %
super yourself` Cascading not expected ->`; yourself%
nil yourself; ` Cascade expected ->`^ 2%
	"#externalFunctionDeclaration is skipped, this cannot be evaluated"
1 to: ` Argument expected ->`:=%
1 +` Argument expected ->`%
1 + ` Argument expected ->`* 2 + 3%
1+(2 ` right parenthesis expected ->`.  %
1 + 2 ` Nothing more expected ->`^nil%
	"#pattern:inContext: skipped, cannot be evaluated"
	"#pragmaLiteral: #pragmaSequence #pragmaStatement skipped, cannot be evaluated"
(  ` expression expected ->`. 2  . )%
( 1  ` right parenthesis expected ->`. 2  . )%
	"#primitive:error: #primitive:module:error: skipped, cannot be evaluated"
^ ` Expression to return expected ->`. 1 + 2%
[ ^1 ` End of block expected ->`2]%
| x y ` Vertical bar expected ->`%
[:z | | x y ` Vertical bar expected ->`]%
1` an integer greater than 1 as valid radix expected ->`r0'.
	self enumerateAllSelections