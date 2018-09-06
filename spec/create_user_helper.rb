def create_user
  @current_user = FactoryBot.build(:user)
  @current_user.skip_confirmation!
  @current_user.save!
end
