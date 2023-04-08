user = User.create(
    name: 'John Doe',
    email: 'johndoe@example.com',
    password: 'password',
    password_confirmation: 'password',
    img_url: 'http://example.com/image.jpg',
    is_admin: false
  )
  user1 = User.create(
    name: 'mo ali',
    email: 'mo@ali.com',
    password: '12345678',
    password_confirmation: '12345678',
    img_url: 'http://sadf.com/image.jpg',
    is_admin: true
  )
  
reservation = Reservation.new(user: user, seat_type: "Goldden")
reservation.save
