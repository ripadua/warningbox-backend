class Produto < ActiveRecord::Base
  belongs_to :marca
  belongs_to :usuario
end
