# begin
#   file = File.open('./ola.txt')
#   puts file.read if file
# rescue Exception => e
#   puts e
# end

def soma(n1, n2)
  n1 + n2
rescue Exception => e
  puts 'Erro ao excecutar o programa'
end

soma('10', 5)
