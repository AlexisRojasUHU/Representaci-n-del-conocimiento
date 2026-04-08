
 /*

	concatenar:
	
	concatenar( ListaI , ListaF , ListaR )
	
	Es cierto cuando ListaR es identica a ListaI añadiendo ListaF al final de esta.
	
	Principio de inducción:
	
	1) concatenar( [] , Lista , Lista ).
	2) concatenar( [ Cabeza1 | Resto1 ] , Lista , [ Cabeza1 | Lista ] ) :- concatenar( Resto1 , Lista , Lista ).

*/

	concatenar( [] , Lista , Lista ).
	concatenar( [ Cabeza1 | Resto1 ] , Lista2 , [ Cabeza1 | R ] ) :- concatenar( Resto1 , Lista2 , R ).