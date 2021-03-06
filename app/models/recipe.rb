class Recipe < ActiveRecord::Base

  belongs_to :chef

  validates :chef_id, presence: true
  validates :name, presence: true, length: { in: 5..20 }
  validates :summary, presence: true, length: { in: 10..150}
  validates :description, presence: true, length: { in: 20..500}
end
