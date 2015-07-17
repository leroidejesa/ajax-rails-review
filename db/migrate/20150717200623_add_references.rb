class AddReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :name
      t.string :job_title
      t.string :email
      t.string :phone
    end
  end
end
