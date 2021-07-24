class Income < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category



  validates :category_id, numericality: { other_than: 1 }




  def income_sum
    income_array = []
    Income.all.each do |income|
      income_array << income.amount
    end
    income_array.sum
  end

  
  
end
