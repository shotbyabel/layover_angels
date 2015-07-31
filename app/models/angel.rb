class Angel < ActiveRecord::Base
  belongs_to :layover

  serialize :airport
  serialize :languages
  serialize :top3_localspots
  serialize :top3_historicalfigs
  serialize :top3_travels
end
