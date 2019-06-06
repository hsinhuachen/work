Trestle.resource(:tags) do
	menu do
		item :tags, icon: "fa fa-tags", label: "類別"
	end

	# Customize the table columns shown on the index view.
	#
	table do
	  column :name
	  column :created_at, align: :center
	  column :updated_at, header: "Last Updated", align: :center
	  actions
	end

	form dialog: true do |type|
		text_field :name
	end
end