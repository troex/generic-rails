# Add your seed here
u = User.create(email: 'troex@fury.scancode.ru', password: '123qwe', password_confirmation: '123qwe')
u.update_attribute(:role, 'admin')
