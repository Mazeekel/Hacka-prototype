class CreateMedia < ActiveRecord::Migration[7.1]
  def change
    create_table :media do |t|

      t.timestamps
    end
  end
end
