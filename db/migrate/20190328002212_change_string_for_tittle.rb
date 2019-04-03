class ChangeStringForTittle < ActiveRecord::Migration[5.2]
  def self.up
    change_table :posts do |t|
      t.change :tittle, :text
    end
  end

  def self.down
    change_table :posts do |t|
      t.change :tittle, :string
    end
  end
end
