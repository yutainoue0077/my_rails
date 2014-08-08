class Project < ActiveRecord::Base
  has_many :tasks
  validates :title,
  presence: { message: "入力をお願いします。" },
  length: { minimum: 3, message: "お名前は4文字以上で。" }
end
