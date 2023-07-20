class Comum

  def request_get(url, header)
    HTTParty.get(url, :headers => header)
  end

end
