# carrinho.rb
require_relative 'produto'
class Carrinho
  attr_reader :itens
  def initialize
    @itens = []
  end

  def adicionar_item(produto)
    @itens << produto
  end

  def calcular_total
    @itens.reduce(0) { |total, produto| total + produto.preco }
  end
end
