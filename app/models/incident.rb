class Incident < ApplicationRecord
  enum dayofweek: { Sunday: 1, Monday: 2, Tuesday: 3, Wednesday: 4, Thursday: 5, Friday: 6, Saturday: 7 }
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def address
    [street, city, zip, state].compact.join(", ")
  end

  def address_changed?
    street_changed? || city_changed? || zip_changed? || state_changed?
  end
end
