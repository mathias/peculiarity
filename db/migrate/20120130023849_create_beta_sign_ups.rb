class CreateBetaSignUps < ActiveRecord::Migration
  def change
    create_table :beta_sign_ups do |t|
      t.string :email_address
      t.boolean :invited

      t.timestamps
    end
  end
end
