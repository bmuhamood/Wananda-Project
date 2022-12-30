class RemoveOtpRequiredForLoginFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :otp_required_for_login, :string
  end
end
