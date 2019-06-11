Trestle.resource(:tags) do
	menu do
		item :tags, icon: "fa fa-tags", label: "類別"
	end

	# Customize the table columns shown on the index view.
	#
	table do
	  column :name, header: "類別名稱"
	  column :created_at, align: :center
	  column :updated_at, header: "Last Updated", align: :center
	  actions
	end

	form dialog: true do |type|
		text_field :name, label: "類別名稱"
	end
end