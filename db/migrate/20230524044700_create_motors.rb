class CreateMotors < ActiveRecord::Migration[7.0]
  def change
    create_table :motors do |t|
      t.string :title
      t.jsonb :content

      t.timestamps
    end
  end
end
