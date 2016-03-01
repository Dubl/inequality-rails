class Contact < MailForm::Base      
  attribute :name,       :validate => true
  attribute :email,      :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :attach_file, :attachment => true

  def headers
    {
      :subject => "an inequality email",
      :to => "admin@zuriapps.com",
      :from => %("#{name}" <#{email}>)
    }
  end
  
end
