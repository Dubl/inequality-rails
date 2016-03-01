class Contact < MailForm::Base      
  attribute :name,       :validate => true
  attribute :other
  attribute :message
  attribute :attach_file, :attachment => true

  def headers
    {
      :subject => "an inequality email", 
      :email => "admin@zuriapps.com",
      :to => "admin@zuriapps.com",
      :from => %("#{name}" <admin@zuriapps.com>)
    }
  end
  
end
