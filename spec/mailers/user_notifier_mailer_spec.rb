# Mailer test
require 'rails_helper'

RSpec.describe 'UserNotifierMailer', type: :mailer do
  describe 'notifier' do
    let(:user) {create(:user)}
    let(:mail) { UserNotifierMailer.send_signup_email(user) }

    it 'renders the headers' do
      expect(mail.subject).to eq('Thanks for signing up for our amazing app')
      expect(mail.to).to eq(['abcd@1234.com'])
      expect(mail.from).to eq(['Easyrent@mail.com'])
    end

    it 'renders the body' do
      expect(mail.body.encoded).to match('Thanks')
    end
  end
end
