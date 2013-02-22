class Medium < ActiveRecord::Base
  attr_accessible :autor, :medienart, :schlagwort, :titel, :systematik, :signatur, :isbn, :medienEtikett, :katalogId, :vorhanden

  validates :autor,  	 			     length: { maximum: 120 }
  validates :titel,  	 presence: true, length: { maximum: 140 }
  #validates :isbn,  	 presence: true, length: { maximum: 25 }
  #validates :schlagwort, presence: true

end
