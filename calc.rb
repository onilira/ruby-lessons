#econding: utf-8

def sumario &bloco
	inicio = Time.now
	bloco.call
	tempo = Time.now - inicio
	puts 'Duracaoo do programa: '+ tempo.to_s
end

sumario do
	numero = 1
	
	1000000.times do
		numero = numero + numero
	end
	
puts numero.to_s.length.to_s
end