class Usuario < ActiveRecord::Base
    has_many :estabelecimentos_usuarios
    has_many :estabelecimentos, :through => :estabelecimentos_usuarios
end
