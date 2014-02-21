class Product < ActiveRecord::Base
  #scope
  default_scope :order => 'title'

  #validations
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image_url, :format => {:with => /\.(gif|jpg|png)/i,
                                    :message => 'bad URL format GIF, JPG, PNG.'}
end
