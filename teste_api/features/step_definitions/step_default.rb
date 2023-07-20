Dado('que realizo a pesquisa por estabelecimentos') do
  header = Header.new.header_default
  url = "#{CONFIG_AMBIENTES[$ambiente.to_sym][:url_base]}/VRPAT"

  @response = Comum.new.request_get(url, header)
end

Quando('valido o status code {string}') do |status_code|
  Validacao.new.valida_status_code(@response.code, status_code, "api_pesquisa_estabelecimentos")
end

Entao('visualizo aleatoriamente um tipo de estabelecimento') do
  print @response['typeOfEstablishment'].sample
end