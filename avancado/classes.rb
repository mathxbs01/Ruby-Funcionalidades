class Conta
  attr_accessor :saldo, :nome

  def initialize(nome)
    self.saldo = 0.0
    self.nome = nome
  end

  def deposita(valor) # valor é o argumento
    self.saldo += valor
    # puts 'Depositando a quantia de ' + valor.to_s + ' reais.'
    puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}."
  end
end

c = Conta.new('Papito') # instaciando para o metódo deposita

# c.saldo = 0.0
c.deposita(100.00)
puts c.saldo
c.deposita(10.00)
puts c.saldo
puts c.nome
