class Contact < MailForm::Base
    attribute :name,        :validates => true
    attribute :email,       :validates => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    attribute :message,     :validates => true
    attribute :nickname,        :validates => true

    def headers 
      {
        :subject => "Contact Form",
        :to => "frunza2029@gmail.com",
        :from => %("#{name}" <#{email}>)

      }
    end
end
