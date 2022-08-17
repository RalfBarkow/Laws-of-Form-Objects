Class {
	#name : #LoForm,
	#superclass : #Object,
	#category : #'Laws of Form Objects'
}

{ #category : #accessing }
LoForm >> distinctionNamed: aName [ 
]

{ #category : #accessing }
LoForm >> distinctions [
]

{ #category : #accessing }
LoForm >> distinguish: aName [

	^ (self distinctionNamed: aName) ifNil:
		[
		| distinction |
		distinction := Distinction named: aName.
		distinction form: self.
		self distinctions add: distinction.
		distinction
		]
]
