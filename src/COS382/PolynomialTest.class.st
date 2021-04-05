Class {
	#name : #PolynomialTest,
	#superclass : #TestCase,
	#category : #COS382
}

{ #category : #tests }
PolynomialTest >> testCoefficient [
	"test coefficient method"
	| a |
	a := Polynomial new initialize: #(5 3 4).
	self assert: (a coefficient: 0) equals: 5;
		assert: (a coefficient: 1) equals: 3;
		assert: (a coefficient: 2) equals: 4;
		assert: (a coefficient: 3) equals: 0;
		assert: (a coefficient: 99) equals: 0
]

{ #category : #tests }
PolynomialTest >> testSum [
	"test the sum method"

			
	| a b |
	a := Polynomial new.
	b := Polynomial new initialize: #(1 3 5).
	self assert: (a sum: b) asArray equals: #(1 3 5).
	a := Polynomial new initialize: #(2 4 6 8).
	self assert: (a sum: b) asArray equals: #(3 7 11 8).
]
