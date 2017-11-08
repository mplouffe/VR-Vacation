class ChangingProvincalTaxStructure < ActiveRecord::Migration[5.1]
  def change

    remove_column :provinces, :gst_rate
    remove_column :provinces, :hst_rate

  end
end
