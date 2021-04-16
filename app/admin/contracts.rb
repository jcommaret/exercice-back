ActiveAdmin.register Contract do
    menu priority: 3
    permit_params :number, :status, :description, :date_start, :date_end, :all_risk
    
    index do
      column "Numéro", :number
      column :status
      column :description
      column :date_start
      column :date_end
      column :all_risk
      
      actions
    end
    
    form do |f|
      f.inputs do
        f.input :number, label: "Numéro"
        f.input :status
        f.input :description
        f.input :date_start
        f.input :date_end
      end
    f.actions
    end
  end