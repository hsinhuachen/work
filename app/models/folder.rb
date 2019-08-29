class Folder < ApplicationRecord
	has_many :cds

	default_scope -> { order('foldername DESC') }
end
