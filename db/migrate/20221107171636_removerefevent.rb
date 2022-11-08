class Removerefevent < ActiveRecord::Migration[7.0]
  def change
    remove_reference :events, :user, index: true
  end
end
