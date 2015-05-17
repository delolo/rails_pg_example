class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
        t.string :proprietaryname
        t.string :proprietarynamesuffix
        t.string :nonproprietaryname
        t.string :dosageformname
        t.string :routename
        t.string :startmarketingdate
        t.string :endmarketingdate
        t.string :substancename
        t.string :active_numerator_strength
        t.string :active_ingred_unit
        t.string :pharm_classes
        t.timestamps null: false
    end
  end
end
