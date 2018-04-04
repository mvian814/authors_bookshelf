class Author < ApplicationRecord
has_many :books

  # mount_uploader :avatar, AvatarUploader




  def name
    "#{first_name} #{last_name}"
  end
end
