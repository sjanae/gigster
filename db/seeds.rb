# User.create([
# 	{
# 		name: 'Fan 1',
# 		email: 'imaFAN@example.com',
# 		location: 'Burbank',
# 		type: 'Fan',
# 		avatar: ''
# 	},

# 	{
# 		name: 'Band 2',
# 		email: 'imaBANDthatsAwesome@example.com',
# 		location: 'Nashville',
# 		type: 'Band',
# 		genre: 'Indie',
# 		avatar: ''
# 	},
# 	{
# 		name: 'Unknown 3',
# 		email: 'whoamI@example.com'
# 		location: 'Detroit'
# 		type: '',
# 		avatar: ''
# 	}


# ])

users = FactoryGirl.create_list(:user, 5)
fans = FactoryGirl.create_list(:user, 5)
bands = FactoryGirl.create_list(:band, 5)
