class Project < ApplicationRecord
  validates_presence_of :name, :material
  belongs_to :challenge
  has_many :contestant_projects
  has_many :contestants, through: :contestant_projects

  def challenge_theme
    challenge.theme
  end

  def contestant_count
    contestants.count
  end

  def contestant_avg_exp
    contestants.average(:years_of_experience)
  end 
end
