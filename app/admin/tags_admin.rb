Trestle.resource(:tags) do
	menu do
		group :project do
			item :tags, icon: "fa fa-tags", label: "作品類別"
		end
	end

	# Customize the table columns shown on the index view.
	#
	table do
	  column :name, header: "類別名稱"
	  column :sorting, header: "排序"
	  # column :created_at, align: :center
	  # column :updated_at, header: "Last Updated", align: :center
	  actions
	end

	form dialog: true do |type|
		text_field :name, label: "類別名稱"
		text_field :sorting, label: "排序"
	end
end