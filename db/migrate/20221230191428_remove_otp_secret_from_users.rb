class RemoveOtpSecretFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :otp_secret, :string
  end
end
