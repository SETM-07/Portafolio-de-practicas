#! /usr/bin/env python
# -*- coding: utf-8 -*-

import pilasengine


def iniciar_juego():
	
	menu.eliminar()
	estrella = 0  
	pilas.fondos.Galaxia()



	#marcador
	puntos = pilas.actores.Puntaje(x=-280, y=200, color=pilas.colores.rojo)
	puntos.magnitud =2
	pilas.avisar("Utiliza las flechas y solo recoge las Estrellas.")
	texto_pts = pilas.actores.Texto("Puntaje:")
        texto_pts.x = -270
        texto_pts.y = 220


	#pacman
	pacman = pilas.actores.Pacman()
	
	pacman.escala= 2.9
	pacman.aprender("MoverseComoCoche")
	pacman.aprender("LimitadoABordesDePantalla")

	#estrellas
	estrella= pilas.actores.Estrella() *20
	
	estrella.aprender("PuedeExplotarConHumo" )
	estrella.aprender("LimitadoABordesDePantalla")       

	#Contador
	def actualizar_contador():
		
		cantidad=len(estrella)
		if cantidad == 20:
			pacman.decir("Recoge todas las estrellas")
		elif cantidad == 0:
			nivel=pilas.avisar("Juego completado")
			pilas.fondos.Galaxia()
			pilas.fisica.eliminar_suelo()
			pilas.fisica.eliminar_paredes()
			pacman.quitar_de_la_escena_completamente()
			estrella.quitar_de_la_escena_completamente()
			texto2 = pilas.actores.Texto("Ganaste")
			boton = pilas.interfaz.Boton("Salir")
			boton.y=-50
	#eliminar
	def cuando_eliminar(pacman,estrella):
		estrella.eliminar()
		puntos.aumentar(1)
		pilas.tareas.agregar(0.5,actualizar_contador)
	choque= pilas.colisiones.agregar( pacman,estrella,cuando_eliminar)  


	#piedra
	pi= pilas.actores.Piedra() *2
	pi.escala=0.9
	pi.aprender("LimitadoABordesDePantalla")
	pi.x=200
	pi.y=200
	pi.aprender("RebotarComoPelota")
	pi[0].empujar(50, 50)

	#pone la ubicacion de las piedras y borra
	def cuando_pi(pac,pie):
		pac.eliminar()
		pie.eliminar()
		pilas.fondos.Galaxia()
		gameover=pilas.avisar("chocaste")
		texto = pilas.actores.Texto("Perdiste")
		
		boton = pilas.interfaz.Boton("Salir")
		boton.y=-50
    
	pilas.colisiones.agregar(pacman,pi,cuando_pi)
	#Gravedad
	pilas.fisica.definir_gravedad(0,0)

def salir_del_juego():
    pilas.terminar()

pilas = pilasengine.iniciar()
pilas.fondos.Galaxia()
menu=pilas.actores.Menu([("Iniciar Juego", iniciar_juego),("Salir",salir_del_juego)])
pilas.ejecutar()
 
 
 
 
 
 
 
 
 
