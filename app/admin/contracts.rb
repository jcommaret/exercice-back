ActiveAdmin.register Contract do
    menu priority: 3
    permit_params :number, :status, :description, :date_start, :date_end, :all_risk
    
    index do
      column "Numéro", :number
      column "Actif", :status do|object|
        object.status? ? 'Yes' : 'No'
      end

      column "Description", :description
      column "Date de début du contrat", :date_start
      column "Date de fin du contrat", :date_end
      column "Tout risque ?", :all_risk
      actions
      
    end
    
    form do |f|
      f.inputs do
        f.input :number, label: "Numéro", input_html: {required: true} 
        f.input :status, label: "Actif ?", input_html: {required: true} 
        f.input :description, label: "Description" 
        f.input :date_start, :as => :datepicker, label: "Date de début du contrat", input_html: {required: true} 
        f.input :date_end, :as => :datepicker, label: "Date de fin du contrat", input_html: {required: true} 
        f.input :all_risk, :as => :boolean, label: "Tout risque"
      end
    f.actions
    end
  end