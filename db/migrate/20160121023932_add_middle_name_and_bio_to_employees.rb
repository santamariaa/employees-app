class AddMiddleNameAndBioToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :middle_name, :string
    add_column :employees, :bio, :text

  end
end

    def change
        create_table :employees do |t|
            t.change 

        end

    end
