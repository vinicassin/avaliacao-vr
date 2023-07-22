require 'rspec'
require 'pry'
require 'yaml'
require 'uri'
require 'date'
require 'httparty'


if ENV['dev']
  $ambiente = "dev"
elsif ENV['homolog']
  $ambiente = "homolog"
elsif ENV['prod']
  $ambiente = "prod"
else
  $ambiente = "dev"
end

$report_title = "Data: #{Time.now.strftime("%d-%m")}, Hora: #{Time.now.strftime("%H-%M")}"
