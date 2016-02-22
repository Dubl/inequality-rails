class Contact < MailForm::Base      
  attribute :name,       :validate => true
  attribute :email,      :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :attach_file, :attachment => true

  def headers
    {
      :subject => "My Form Subject",
      :to => "jkeskit@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
  
end
