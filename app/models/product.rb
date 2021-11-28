class Product < ApplicationRecord
    validates :title, :image_url, :presence => true# khong duoc bo trong
    validates :price, :numericality => {:greater_than_or_equal_to => 1000}#gia tri nhap vao lon hon 1000
    validates :title, :uniqueness => true #duy nhat, khong the giong nhau
    validates :image_url, :format => {
        :with => %r{\.(gif|jpg|png)\Z}i,
        :message => 'Chi nhan file GIF, JPG, PNG'}
    belongs_to :category
    has_many :product_properties
    accepts_nested_attributes_for :product_properties
end
