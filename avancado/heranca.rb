class Carro
  attr_accessor :nome, :marca, :modelo
  def initialize(nome, marca, modelo)
    self.nome = nome
    self.marca = marca
    self.modelo = modelo
  end
  def ligar
    puts "#{nome} está pronto para iniciar o trajeto!"
  end
  def
    puts 'Beep! Beep!'
  end
end
civic = Carro.new('Civic', 'Honda', 'SI')
puts civic.nome
civic.ligar
civic.buzinar

lancer = Carro.new('Lancer', 'Mitsubishi', 'EVO')
lancer.ligar
lancer.buzinar