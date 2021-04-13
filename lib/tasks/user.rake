namespace :user do
  desc "TODO"
  task create_user: :environment do
  	User.create(name: 'Prashant', position: '5', roll_number: '149')
  end

end
