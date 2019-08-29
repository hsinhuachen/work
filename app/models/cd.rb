class Cd < ApplicationRecord
	belongs_to :folder

	default_scope -> { order('cd_id DESC') }
end
