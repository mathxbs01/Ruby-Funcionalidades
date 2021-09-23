class Carro
  attr_accessor :nome #atributo

  def ligar
    puts 'O carro está pronto para iniciasr o trajeto.'  #método/função
  end
end

civic = Carro.new

civic.nome = 'Civic'
puts civic.nome
civic.ligar
