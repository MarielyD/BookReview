class Book < ApplicationRecord
  belongs_to :user
  belongs_to :category

 has_attached_file :photo, :styles => { :book_index => "250x350>", :book_show => "325x475>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
