class AddActiveToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :waiting, :boolean, default: true
  end
end