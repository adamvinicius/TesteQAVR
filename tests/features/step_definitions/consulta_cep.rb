require 'httparty'
Dado("que envio solicitacao de endereco com o cep {string}") do |cep|
  @response = HTTParty.get('https://viacep.com.br/ws/'+cep+'/json/')
end

Entao("retorna o codigo do ibge {string}") do |ibge|
  expect(@response['ibge']).to eq ibge
  $stdout.puts @response['ibge']
end

Entao("retorna o codigo de falha {int}") do |code|
  expect(@response.code).to eq code
end