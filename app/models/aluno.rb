class Aluno < ApplicationRecord
    validates :nome, presence: { message: "É obrigatório informar o nome!" }
end
