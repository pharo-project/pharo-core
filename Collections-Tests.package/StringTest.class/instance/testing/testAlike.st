testAlike

self assert: ('test' alike: 'test') >= 8.   "twice second argument size is the best score"
self assert: ('TEST' alike: 'test') >= 8.   "case is ignored"
self assert: ('י ט א פ ü צ ß ה ף ס ם ב' alike: 'test') = 0. 
self assert: ('י ט א פ ü צ' alike: 'י ט א פ ü צ ß ה ף ס ם ב') >= 10. 
self assert: ('eeeee' alike: 'ייייי') <= 1.  "evaluation based on ascii value"