
/*
	Elemento de una lista

	pertenece( Elem , Lista )

	Es cierto si el elemento se encuentra dentro de la lista
	
	Principio de Inducccion:
	
	1) pertenece( N , [N|_] ).
	2) pertenece( N , [ _|Resto ] ) :- pertenece( N , Resto ).

*/

	pertenece( N , [N|_] ).
	pertenece( N , [ _|Resto ] ) :- pertenece( N , Resto ).