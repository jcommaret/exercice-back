ActiveAdmin.register User do
    permit_params :email, :password_digest
  
    index do
      selectable_column
      id_column
      column :email
      
    end
  
    filter :email
    
    form do |f|
      f.inputs do
        f.input :email
        f.input :password_digest
      end
    end
  
  end