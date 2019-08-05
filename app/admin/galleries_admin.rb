Trestle.resource(:galleries) do
  menu do
    group :project do
      item :galleries, icon: "fa fa-star"
    end
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :name, header: false, class: "col-img" do |img|
        admin_link_to(image_tag(img.name.url, class: "img-responsive"), img) if img.name?
      end
    column :sorting, header: "排序"
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form  dialog: true do |gallery|
    text_field :sorting, label: "排序"
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:gallery).permit(:name, ...)
  # end
end
