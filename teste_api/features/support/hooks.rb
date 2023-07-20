require 'report_builder'

at_exit do
    ReportBuilder.configure do |config|
        config.json_path = 'data/reports/report.json'
        config.report_path = "data/reports/report-#{$report_title}"
        config.report_title = "Projeto exemplo API - #{$report_title}"
        config.color = "green"
    end
    ReportBuilder.build_report
  end


# After do |scenario|
#   if scenario.failed?
#     binding.pry
#   end
# end
