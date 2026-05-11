class ReportService
  def initialize(mailer)
    @mailer = mailer
  end

  def generate(user_email)
    if user_email.nil? || user_email.empty?
      "Email inválido"
    elsif @mailer.send_report(user_email)
      "Relatório enviado para #{user_email}"
    else
      "Falha no envio"
    end
  end
end
