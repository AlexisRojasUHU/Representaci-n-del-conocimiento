
/*
	Color_code

	color_code( Color , valor )

	Es cierto si el color se corresponde con su código de color
	
	Colors
	
	colors( Color , Num )
	
	Es cierto si devuelve la suma de todos los códigos de colores cuyo valor sea mas grande que el código del color introducido.

	Principio de Inducccion:
	
	1) pertenece( N , [N|_] ).
	2) pertenece( N , [ _|Resto ] ) :- pertenece( N , Resto ).

*/

color_code( "black" , 0 ).
color_code( "brown" , 1 ).
color_code( "red" , 2 ).
color_code( "orange" , 3 ).
color_code( "yellow" , 4 ).
color_code( "green" , 5 ).
color_code( "blue" , 6 ).
color_code( "violet" , 7 ).
color_code( "grey" , 8 ).
color_code( "white" , 9 ).

colors( color1 , Num1 ) :- colors( color2 , Num2 ) , color_code( color2 , Num ) , Num1 = Num + Num2.