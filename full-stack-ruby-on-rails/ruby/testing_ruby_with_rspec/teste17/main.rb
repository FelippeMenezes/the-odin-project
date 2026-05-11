require_relative 'lib/report_mailer'
require_relative 'lib/report_service'

report_mailer1 = ReportMailer.new
p report_mailer1
p report_mailer1.send_report('johndoe@gmail.com')

report_service1 = ReportService.new(report_mailer1)
p report_service1
p report_service1.generate('johndoe@gmail.com')
