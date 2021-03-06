# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  surname    :string(255)
#  email      :string(255)
#  phone      :string(255)
#  message    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contact < ActiveRecord::Base
  after_create :send_email

  def send_email
    #Sending mails
    # ContactMailer.send_contact(self).deliver!
  end
  validates_presence_of :name, :surname, :email, :phone, :message
end
