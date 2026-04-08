
/*

	crea lista:
	
	Crea_lista( +Tam , +N , -ListaR )
	
	Es cierto cuando ListaR unifica con una lista de tamaño Tam la cual contiene numeros aleatorios entre 1 y N.
	
	Principio de inducción:
	
	1) crea_lista( 0 , [] ).
	2) crea_lista( N , [ Cabeza | Resto ] ) :- crea_lista( N , Resto ) , random( Cabeza ) .
	
*/

	crea_lista( 0 , _ , [] ).
	crea_lista( Tam1 , N , [ Cabeza | Resto ] ) :- Tam2 is Tam1 - 1 , 
												   crea_lista( Tam2 , N , Resto ) , 
												   Cabeza is random( N ) + 1 .
