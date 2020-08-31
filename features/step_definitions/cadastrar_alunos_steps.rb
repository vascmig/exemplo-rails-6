  Dado('que estou na página de cadastro de aluno') do
    visit '/alunos/new'
  end
  
  Quando('preencho com infomações válidas') do
    fill_in "Nome", :with => "Miguel Vasconcelos"
    fill_in "Email", :with => "miguel.vasconcelos@usp.br"
  end
  
  Quando('clico em salvar') do
    click_on 'Salvar novo aluno'
  end
  
  Então('ele deve ter sido salvo no banco de dados') do
    aluno = Aluno.order("id").last
    expect(aluno.nome).to eq('Miguel Vasconcelos')
    expect(aluno.email).to eq('miguel.vasconcelos@usp.br') 
  end
  
  Então('deverei ver o aluno na página de listagem de alunos') do
    expect(page).to have_content('Miguel Vasconcelos')
    expect(page).to have_content('miguel.vasconcelos@usp.br')
  end
  
  Quando('preencho o nome mas não o e-mail') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('deverei ver uma mensagem de erro sobre obrigatoriedade do email') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('preencho o e-mail mas não o nome') do
    fill_in "Email", :with => "miguel.vasconcelos@usp.br"
  end
  
  Então('deverei ver uma mensagem de erro sobre obrigatoriedade do nome') do
    expect(page).to have_content('É obrigatório informar o nome!')
  end
  
  Quando('preencho o campo de e-mail com um e-mail inválido') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('deverei ver uma mensagem de erro sobre email não válido') do
    pending # Write code here that turns the phrase above into concrete actions
  end