require './lib/report_service'

RSpec.describe ReportService do
  let(:report_mailer) { double('report_mailer')}
  subject { described_class.new(report_mailer) }

  describe '#generate' do
    context 'quando user_email não está presente' do
      before { allow(report_mailer).to receive(:send_report).and_return(nil) }
      it 'retorna "Email inválido"' do
        expect(subject.generate(nil)).to eq('Email inválido')
      end
    end

    context 'quando user_email é vazio' do
      it 'retorna "Email inválido"' do
        expect(subject.generate('')).to eq('Email inválido')
      end
    end

    context 'quando user_email está presente' do
      before { allow(report_mailer).to receive(:send_report).and_return(true) }
      it 'retorna "Relatório enviado"' do
        expect(subject.generate('johndoe@gmail.com')).to eq('Relatório enviado para johndoe@gmail.com')
      end
    end

    context 'quando o mailer falha no envio' do
      before { allow(report_mailer).to receive(:send_report).and_return(false) }
      it 'retorna "Falha no envio"' do
        expect(subject.generate('valid@email.com')).to eq('Falha no envio')
      end
    end
  end
end
