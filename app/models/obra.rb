class Obra < ApplicationRecord
 # validacao => não permite requisição com campos em branco e faltando atribudos
 # sem isso, permite cadastrar com campos em branco, mas nao permite com atributos faltantes
 validates :titulo, presence: true
 belongs_to :actor
end

