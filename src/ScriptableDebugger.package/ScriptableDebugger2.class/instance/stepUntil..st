stepping
stepUntil: aBlock
	"Steps the execution until aBlock evaluates to true"
	aBlock whileFalse: [ self step ]