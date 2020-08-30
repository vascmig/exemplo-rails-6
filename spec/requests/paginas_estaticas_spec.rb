require 'rails_helper'
require 'spec_helper'
 
describe "Página Inicial" do
  it "deveria ter o conteúdo 'Bem vindo'" do
    visit '/'
    expect(page).to have_content('Bem vindo')
  end
end