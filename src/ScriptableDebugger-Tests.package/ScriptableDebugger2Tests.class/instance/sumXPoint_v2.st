exec example - sumXPoint
sumXPoint_v2
	|p xSum|
	p := Point x: 1 y: 1.
	xSum := { p. Point x: 2 y: 2. Point x: 4 y: 4.} inject: 0 into: [ :sum :point | sum + point x ].
	^ xSum