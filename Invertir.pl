
/*

	Lista Invertida.
	
	invertir( ListaN , ListaI )
	
	Es cierto si la lista invertida se corresponde con la inversa de la lista normal.
	
	Principio de inducción:
	
	1) invertir( [] , [] ).
	3) invertir( [ Cabeza | Resto ] , L1 ) :- invertir( Resto , L2 ) , append( L2 , [ Cabeza ] , L1 ).

*/

	invertir( [] , [] ).
	invertir( [ Cabeza | Resto ] , L1 ) :- invertir( Resto , L2 ) , append( L2 , [ Cabeza ] , L1 ).