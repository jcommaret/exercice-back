ActiveAdmin.register User do
    menu priority: 2
    permit_params :email, :password_digest, :contracts
  
    index do
      selectable_column
      id_column
      column :email  
      actions
    end
    
    form do |f|
      f.inputs do
        f.input :email
        f.input :password_digest
        # f.input :contracts, :label => 'Contract', :as => :select, :collection => Contract.all
        end
      f.actions
    end
  end