class NewsHistory < ApplicationRecord
  belongs_to :user

  before_validation :set_price

  validates :user_id, presence: { message: "必須項目です。" }
  validates :price, presence: { message: "必須項目です。" }
  validates :detail, length: { maximum: 255, too_long: "detailは最大%{count}文字以内にしてください。" }
  validate :price_validate

  def price_validate
    if price < 1
      errors.add(:price, "priceが正しくありません。")
    end
  end

  def set_price
    if price.nil?
      self.price = 100
    end
  end
end
