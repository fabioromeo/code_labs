def da_boas_vindas
puts "Bem vindo ao jogo de adivinhar"
puts "Qual o seu nome?"
nome = gets 
puts "\n\n"  
puts "Começaremos o jogo " + nome
end

def sorteia_numero_secreto
puts "escolhendo um número secreto entre 0 e 200..."
sorteado = 175 #variável local
puts "Escolhido. Que tal adivinhar hoje o nosso numero secreto?"
sorteado #devolve o numero secreto digitado como saída da função
end

def pede_um_numero (tentativa, limite_de_tentativas)
	puts "\n\n\n\n"
	puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
	puts "Entre com o numero"
	chute = gets 
	puts "Sera que acertou? Voce chutou " + chute
	chute.to_i
end

def verifica_se_acertou (numero_secreto, chute)
	acertou = numero_secreto == chute.to_i

	if acertou
		puts "Acertou!"
		return true
	end
	
	maior = numero_secreto > chute.to_i
	if maior 
		puts "o número secreto é maior"
	else
		puts "o número secreto é menor"
	end
	false
end

da_boas_vindas
numero_secreto = sorteia_numero_secreto #pede o numero secreto da funcao e coloca na variavel global

limite_de_tentativas = 5 #variável global

for tentativa in 1..limite_de_tentativas 
	chute = pede_um_numero tentativa, limite_de_tentativas
	if verifica_se_acertou numero_secreto, chute
		break
	end
end

