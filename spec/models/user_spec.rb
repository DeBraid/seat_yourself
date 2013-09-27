require 'spec_helper'

describe User do
  let :user do
  	build :user
  end

  subject	do
  	user
  end

	  context 'is invalid' do
		  it 'when required #email is not given' do
		    user.email = ''
		    should_not be_valid
		  end

		  it 'when required #password is empty' do
		    user.password = ''
		    should_not be_valid
		  end

		  it 'when required #full_name is empty' do
		    user.full_name = ''
		    should_not be_valid
		  end

		  it 'when #email is not unique' do
			  user.save
			  user1 = build :user
			  user1.save

			  user1.should_not be_valid
			  user1.errors.full_messages[0].should match 'Email has already been taken'
			end
		end
end
