subencodings
isUnifiedKanji: code

	^ ((((16r2E80 <= code and: [code <= 16rA4CF])
		or: [16rF900 <= code and: [code <= 16rFAFF]])
			or: [16rFE30 <= code and: [code <= 16rFE4F]])
				or: [16rFF00 <= code and: [code <= 16rFFEF]])
					or: [16r20000 <= code and: [code <= 16r2FA1F]].
