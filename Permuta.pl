
/*

	Permuta:
	
	permuta( +Lista ,-ListaR ).
	
	Es cierto si ListaR unifica todos los elementos de Lista pero en orden diferente.
	
	Principio de Inducción:
	
	1) permuta( [  ] , [  ] ).
	2) permuta( ListaI , [ Elem | ListaR ] ) :- select( Elem , ListaI , Resto ),
											    permuta( Resto , ListaR ).

*/

	permuta( [  ] , [  ] ).
	permuta( ListaI , [ Elem | ListaR ] ) :- select( Elem , ListaI , Resto ),
											 permuta( Resto , ListaR ).