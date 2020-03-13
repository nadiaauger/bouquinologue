class Book < ApplicationRecord
  validates :author, presence: true
  validates :title, presence: true
  validates :editor, presence: true
  validates :price, presence: true
  enum category: [:Psychanalyse, :PsychanalyseRevuesPeriodiques, :PsychiatrieEnfant, :Psychologie, :Philosophie, :SociologieEthnoAnthropologie, :Litterature, :LitteratureRevuesCollections, :Poesie, :Theatre, :Cinema, :CivilisationAraboMusulmane, :SemantiqueSemiologie, :ArtsDesignPeinturePhoto]
end
