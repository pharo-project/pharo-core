testing - formatting
testFormat

 	{ 
 		[ '\{ \} \\ foo {1} bar {2}' format: { 12. 'string' } ] -> '{ } \ foo 12 bar string'. 
 		[ '\{ \} \\ foo {2} bar {1}' format: { 'string'. 12 } ] -> '{ } \ foo 12 bar string'. 
 		[ '\{1}' format: {} ] -> '{1}'. 
 		[ '\{1}{1}' format: { $a } ] -> '{1}a'. 
 	} do: [ :each | self assert: each key value = each value ]