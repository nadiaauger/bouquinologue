class Book < ApplicationRecord
  validates :author, presence: true
  validates :title, presence: true
  enum category: [:Psychanalyse, :PsychanalyseRevuesPeriodiques, :PsychiatrieEnfant, :Psychologie, :Philosophie, :SociologieEthnoAnthropologie, :Litterature, :LitteratureRevuesCollections, :Poesie, :Theatre, :Cinema, :CivilisationAraboMusulmane, :SemantiqueSemiologie, :ArtsDesignPeinturePhoto]
  validates_uniqueness_of :title, scope: [:author, :year, :editor]
end
