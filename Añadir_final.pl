
/*

	Aniadir al final.
	
	aniadir_final( Elem , Lista , ListaR )
	
	Es cierto cuando ListaR es identica a Lista añadiendo Elem al final de esta.
	
	Principio de inducción:
	
	1) aniadir_final( elem , [] , [ elem ] ).
	3) añadir_final( Elem , Lista , ListaR ).

*/

	aniadir_final( Elem , [] , [ Elem ] ).
	aniadir_final( Elem , [ Cabeza | Resto1 ] , [ Cabeza | Resto2 ] ) :- aniadir_final( Elem , Resto1 , Resto2 ).
