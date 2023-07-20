class Validacao

  def valida_status_code(status_code_request, status_code_esperado, api)
    if status_code_request != status_code_esperado.to_i
      raise "Status code na api #{api}: #{response.code}, esperado: #{status}, body retornado: #{body}, ERRO."
    end
  end

end
