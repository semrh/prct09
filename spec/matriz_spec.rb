#Definicion de las espectativas de matriz.rb

require 'spec_helper'

describe P9lppt13 do
	before :each do
		@m1 = Densa.new(2,2,[[1,2],[3,4]])
		@m2 = Densa.new(3,3,[[1,2,4],[6,5,8],[2,5,3]])
		@m3 = Densa.new(2,3,[[3,6,9],[2,8,4]])
		@m4 = Densa.new(3,2,[[1,3],[2,4],[6,5]])
		@m5 = Densa.new(2,2,[[5,3],[2,3]])
		@f1 = Fraccion.new(1,2)
		@f2 = Fraccion.new(3,2)
		@f3 = Fraccion.new(5,2)
		@mf1 = Densa.new(2,2,[[@f1,@f2],[@f3,@f1]])
		@mf2 = Densa.new(2,2,[[@f1,@f2],[@f1,@f2]])
	end
	
	# Comprobacion de que se crea bien la matriz
	describe "Comprobamos el numero de...\n" do
		it " - Filas para una matriz 3x3\n" do
			@m2.nfil.should eq(3)
		end
		it " - Columnas de una matriz 3x3\n" do
			@m2.ncol.should eq(3)
		end
		it "Acceso al elemento [0][0]" do
			@m1.pos[0][0].should eq(1)
		end
		it "Acceso al elemento [0][1]" do
			@m1.pos[0][1].should eq(2)
		end
		it "Acceso al elemento [1][0]" do
			@m1.pos[1][0].should eq(3)
		end
		it "Acceso al elemento [1][1]" do
			@m1.pos[1][1].should eq(4)
		end
	end
	
end
