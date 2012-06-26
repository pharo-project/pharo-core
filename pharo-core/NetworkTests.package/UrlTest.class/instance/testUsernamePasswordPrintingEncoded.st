tests
testUsernamePasswordPrintingEncoded
	
	#('http://F%C3%BCrst%20P%C3%BCckler:leckerEis@cottbus.brandenburg:80/mein/Zuhause'
	'http://Jeannde.d%27Arc:jaiunes%C3%A9cret@orleans:8080/une/deux/trois'
	'http://HaXor%40roxor%3Afnac:my%7EPa%24%C2%A7wert@cbase:42/do/not_try') 
		do: [ :urlText |
			self should: [ urlText = urlText asUrl asString ] ].