
 /*

	ordenación inserccion:
	
	ordena_burbuja( +ListaI , -ListaR )
	
	Es cierto cuando ListaR unifica ListaI pero con todos sus elementos ordenados.
	
	Principio de inducción:
	
	1) 	ordena_inserccion( [] , [] ).
	2)  ordena_inserccion( [ Cabeza | Resto ] , ListaR ) :- inserta_Ordenada( Cabeza , Lista , ListaR ) , ordena_inserccion( Resto , Lista ) .

*/

	ordena_inserccion( [] , [] ).
	ordena_inserccion( [ Cabeza | Resto ] , ListaR ) :- ordena_inserccion( Resto , Lista ) , inserta_Ordenada( Cabeza , Lista , ListaR ) .

/*

	inserta_Ordenada:
	
	inserta_Ordenada( +Elem , +ListaI , -ListaR )

	Es cierto si ListaR unifica con ListaI con el elemento Elem introducido en su posición ordenada.
	
	1) inserta_Ordenada( Elem , [] , [ Elem ] ).
	2) inserta_Ordenada( Elem , [ Cabeza | Resto ] , [ Elem , Cabeza | Resto ] ) :- Elem =< Cabeza.
	3) inserta_Ordenada( Elem , [ Cabeza | Resto ] , [ Cabeza | ListaR ] ) :- Elem > Cabeza , inserta_Ordenada( Elem , Resto , ListaR ) .

*/

	inserta_Ordenada( Elem , [] , [ Elem ] ).
	inserta_Ordenada( Elem , [ Cabeza | Resto ] , [ Elem , Cabeza | Resto ] ) :- Elem =< Cabeza.
	inserta_Ordenada( Elem , [ Cabeza | Resto ] , [ Cabeza | ListaR ] ) :- Elem > Cabeza , inserta_Ordenada( Elem , Resto , ListaR ) .
	