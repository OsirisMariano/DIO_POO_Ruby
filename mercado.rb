# mercado.rb
require_relative 'produto'
require_relative 'carrinho'

# Criação de produtos
produto1 = Produto.new('Maçã', 2.0)
produto2 = Produto.new('Banana', 1.5)
produto3 = Produto.new('Laranja', 1.2)

# Criando um carrinho e adicionando produtos
carrinho = Carrinho.new
carrinho.adicionar_item(produto1)
carrinho.adicionar_item(produto2)
carrinho.adicionar_item(produto3)

# Calculando o total
total = carrinho.calcular_total

puts "Produtos no carrinho:"
carrinho.itens.each do |produto|
  puts "#{produto.nome}: R$#{produto.preco}"
end

puts "Total a pagar: R$#{total}"