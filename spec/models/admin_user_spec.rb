require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  let(:admin) { AdminUser.create(email: "test@mail.com", password: "password")}

  describe 'attributes' do
  	it 'has a name' do
  		expect(admin.email).to eq("test@mail.com")
  	end

  	it 'can be saved' do
  		expect(admin.valid?).to eq(true)
  	end
  end
end
