Trestle.resource(:cds) do
  menu do
    group :cd, priority: :last do
      item :cds, icon: "fa fa-save"
    end
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :cd_id, header: "CD 編號"
    column :folder, header: "資料夾"
    column :company, header: "公司名稱"
    column :info, header: "CD內容"
    column :user, header: "設計師"
    column :created_at, align: :center, header: "建立日期"
    actions
  end

  search do |query|
    if query
      Cd.where("company LIKE ?", "%#{query}%").or(Cd.where("info LIKE ?", "%#{query}%"))
    else
      Cd.all
    end
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |cd|
    text_field :cd_id, label: "CD 編號"
    text_area  :company, label: "公司名稱"
    text_area  :info, label: "CD內容"
    select     :folder_id, Folder.all, label: "資料夾"
    text_field  :user, label: "設計師"

    row do
      col(xs: 6) { datetime_field :updated_at }
      col(xs: 6) { datetime_field :created_at }
    end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:cd).permit(:name, ...)
  # end
end
