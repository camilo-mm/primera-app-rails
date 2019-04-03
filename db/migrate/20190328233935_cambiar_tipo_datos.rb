class CambiarTipoDatos < ActiveRecord::Migration[5.2]
  def self.up
    change_table :cities do |t|
      t.change :country, :string
    end
  end

  def self.down
    change_table :cities do |t|
      t.change :country, :text
    end
  end
end
