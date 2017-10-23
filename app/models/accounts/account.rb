class Account < ApplicationRecord
  belongs_to :user

  scope :talents, -> { where(type: 'Talent') }
  scope :agencies, -> { where(type: 'Agency') }

end

class Agency < Account;
end

class Talent < Account;
end
