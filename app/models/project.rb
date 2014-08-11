class Project < ActiveRecord::Base
  mount_uploader :image, PictureUploader
  has_many :tasks
  has_many :hobbies
  validates :title,
  presence: { message: "入力をお願いします。" },
  length: { minimum: 3, message: "お名前は4文字以上で。" }
end
