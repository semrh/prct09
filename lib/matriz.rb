#! /usr/bin/ruby

require "fraccion.rb"
require "p9lppt13/version"

# PRACTICA 9
# Codigo de matriz

module P9lppt13
	class Matriz
	
		attr_reader :nfil, :ncol
	
		# Metodo initilize de la clase base
		def initialize(nfil, ncol)
			@nfil = nfil
			@ncol = ncol
		end
		
		# Getter de nfil
		def filas
			@nfil
		end
		
		# Getter de ncol
		def colum
			@ncol
		end
		
		# Metodo para convertir la matriz a string
		def to_s
			aux = ""
			@nfil.times do |i|
				@ncol.times do |j|
					aux << "#{pos[i][j]}\t"
				end
				aux << "\n"
			end
			aux
		end
		
		# Metodo para sumar dos matrices
		def +(other)
			if ((@nfil != other.nfil) || (@ncol != other.ncol))
				puts "No se pueden sumar las matrices"
			else
				elemento = Array.new(0)
				for i in 0...filas
					fila = Array.new(0)
					for j in 0...colum
						fila << pos[i][j] + other.pos[i][j]
					end
					elemento << fila
				end
			end
			Matriz.new(@nfil, @ncol, elemento)
		end	
		
		# Metodo para restar dos matrices
		def -(other)
			if ((@nfil != other.nfil) || (@ncol != other.ncol))
				puts "No se pueden restar las matrices"
			else
				elemento = Array.new(0)
				for i in 0...filas
					fila = Array.new(0)
					for j in 0...colum
						fila << pos[i][j] - other.pos[i][j]
					end
					elemento << fila
				end
			end
			Matriz.new(@nfil, @ncol, elemento)
		end
		
		# Metodo para multiplicacion dos matrices
		def por(other)
			if ((@nfil != other.ncol) || (@ncol != other.nfil))
				puts "No se pueden multiplicarr las matrices"
			else
				elemento = Array.new(0)
				for i in 0...nfil
					fila = Array.new(0)
					for j in 0...other.ncol
						aux = 0
						for k in 0...ncol
							aux += pos[i][k] * other.pos[k][j]
						end
						fila << aux
					end
					elemento << fila
				end
			end
			Matriz.new(@nfil, other.ncol, elemento)
		end
		
		# Metodo para multiplicacion dos matrices
		def porf(other)
			if ((@nfil != other.ncol) || (@ncol != other.nfil))
				puts "No se pueden multiplicarr las matrices"
			else
				elemento = Array.new(0)
				for i in 0...nfil
					fila = Array.new(0)
					for j in 0...other.ncol
						aux = Fraccion.new(1,1)
						aux = aux - aux
						for k in 0...ncol
							aux += pos[i][k] * other.pos[k][j]
						end
						fila << aux
					end
					elemento << fila
				end
			end
			Matriz.new(@nfil, other.ncol, elemento)
		end
		
		# Metodo para multiplicar una matriz por un escalar
		def *(other)
			elemento = Array.new(0)
			for i in 0...filas do
				fila = Array.new(0)
				for j in 0...colum do
					fila << pos[i][j]*other
				end
				elemento << fila
			end
			Matriz.new(@nfil, @ncol, elemento)
		end
		
		# Metodo para hallar la traspuesta de una matriz
		def trasponer
			elemento = Array.new(0)
			for i in 0...colum
				fila = Array.new(0)
				for j in 0...filas
					fila << pos[j][i]
				end
				elemento << fila
			end
			Matriz.new(@ncol, @nfil, elemento)
		end
		
		
		# Metodo para convertir la matriz en un vector
		def vectorizar
			aux = Array.new(0)
			for i in 0...colum
				for j in 0...filas
					aux << pos[i][j]
				end
			end
			Array.new(aux)
		end
		
	end
	

end
