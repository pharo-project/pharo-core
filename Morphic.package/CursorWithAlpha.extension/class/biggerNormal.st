*Morphic
biggerNormal
	"self biggerNormal showWhile:[Sensor waitButton]"
	"(Base64MimeConverter mimeEncode: ((FileStream readOnlyFileNamed: 'EtoysCursor.png') binary)) upToEnd"

	^self constants at: #biggerNormal ifAbsentPut: [
		| form cursor |
		form := (PNGReadWriter on: (Base64MimeConverter mimeDecodeToBytes:
			'iVBORw0KGgoAAAANSUhEUgAAABsAAAArCAYAAACJrvP4AAAACXBIWXMAAAsTAAALEwEAmpwY
			AAAEF0lEQVRYCb2XS0hcVxjHj2/G8ZWMQQbSGO2iRhERwRALBmJNoOOqwUXtYtxOTQJxI8SN
			CyXJqggVEghusrAuBB8IddUWF64CvnCj+AJrsYKio6JJOPn/j+dc5s6MztyZMR/857v3PL7f
			/c4595w7QmiTUvrN9ZV7wGhfB3jOunpgOoYtPQQm19fXn6DsulY2PJUSi4ARvLm5+SuiE5hS
			mAsBXSYzv99vLuXExMRL1H2jlRKoDYbAMhS4uLj4PJUwN4K5TTqEhQPHxsZeayCzTCrDqLC0
			tLQryTAqjNmFA1OR4YWwaMBk5/BSWDRgMhnGhEUDJpphXDACqdDXIpEMHcHCF43TDB3Bks0w
			IVj4kMabYcKwcGA8c+gIlp2drRaKGc5wYKwMHcFycnIiYOHACzLkhi9SAgsHRsnQOSzaMBJk
			FPoejo6OvkJ5iZY67R1lZoJe5kOBKysrzxzBCgoKrCcnpKysTO7v75sjMKafmZl5gX6uNPww
			M4EeQXrsEAJDJc7Ozngr8vPzRVVVldjZ2RGrq6uqrLi4WPT394u2tjZxeHj4P8C7qiLkJzMz
			8zNvc3NzT+jR/yl9xDBmZWWpTAoLC2V9fb3c29uTXV1dtuwaGxtVRgcHBzuI0QY91vLBUw+0
			voOnXPyyijBEUWWVlZViampKFBUVCcyDKC8vt9pitYnp6WlmfqO7u/uOVRHjIiKzjIwM2dDQ
			oDIKnZCWlhZbdoFAQFUvLCz8Bcb3WrfgqWItFR/XKrEIWG1trQWam5v7Z3Bw8C2jjoyMyNLS
			UgvIYeYQ05A5h5HA+GE1NTVWgPn5+b/RubWiosJ/enoaZNDq6moLhjrZ19fHYjk7O/sO9/eg
			G1oZ8JTNbJmZJ9Wgn9GyleJQMWhPT48NhnllsTw+Pv4X7WLCuI1YX8TsuLy8/CfKmrXuwt9t
			b2//iXX4LJder9cCut1uOT4+zio5PDz8G9pWaqm4uLaZDaZBXLY2GO4bdnd3PzAowDZYc3Mz
			i+X29vY82l0K4ypR/2JOTk7e49qsIuMLUEbdXFpaes6gk5OT0uPxWECeBGtra6ySvb29v6Bt
			ve7DfjZTsKOjo99RyvkzEOMtGOpuBoPBbQblQsK9Ejfnzs5OFsuNjY0JlF8IQ11clodWeVgo
			bxh0YGDABmOmNGxzh2j3EPJqRV2VqLvUFKyjo+NHBuWqxb4nS0pKVFZmGFG+gihJw8wTerHx
			/kEgXng6y7a2thYxnAHAHkHfavEcoxyZBcOh+AOHixS+7HwnfT4f/6nynSQoaZh5MjWcTU1N
			94aGhtrr6up8qLgPcVFQd7SuwVPmIdN5njk1wmi31a8QHu3VuYVrLhDaf+dOHGgvE4Gp3RsB
			cnUQMx+f9P1H7c9PXyHUIcoy01HXX637AibwgHAnFRPGAAAAAElFTkSuQmCC' 
				readStream) readStream) nextImage.
	cursor := CursorWithAlpha extent: form extent depth: 32.
	form displayOn: cursor.
	cursor offset: -2 @ -1.
	cursor preMultiplyAlpha.
	cursor]