# Create companies
company1 = Company.create(
    name: 'Acme Corp',
    img_url: 'https://example.com/acme_logo.png',
    location: 'New York',
    bio: 'We make things happen.',
    email: 'info@acme.com',
    password: 'acmepassword'
  )
  
  company2 = Company.create(
    name: 'Globex Inc',
    img_url: 'https://example.com/globex_logo.png',
    location: 'Los Angeles',
    bio: 'We are everywhere.',
    email: 'info@globex.com',
    password: 'globexpassword'
  )
  
  # Create singers
  singer1 = Singer.create(
    name: 'John Smith',
    email: 'info@globexx.com',
    password: 'adfgoimk',
    bio: 'number one',
    image_url: 'https://example.com/johnsmith.jpg',
    music_genre: 'Pop'
  )
  
  singer2 = Singer.create(
    name: 'Jane Doe',
    email: 'info@globex.com',
    password: 'adfgoiasmk',
    bio: 'number two',
    image_url: 'https://example.com/janedoe.jpg',
    music_genre: 'Rock'
  )
  
  # Create venues
  venue1 = Venue.create!(
    location: "The Hollywood Bowl",
    platinum_seats_count: 500,
    gold_seats_count: 1000,
    silver_seats_count: 2000,
    company: company1
  )
  
  venue2 = Venue.create!(
    location: "The Greek Theatre",
    platinum_seats_count: 300,
    gold_seats_count: 600,
    silver_seats_count: 1200,
    company: company2
  )
  
  # Create concerts
  concert1 = Concert.create!(
    date: "2023-05-01",
    start_time: "19:00",
    end_time: "22:00",
    silver_ticket_price: 50.00,
    gold_ticket_price: 100.00,
    platinum_ticket_price: 200.00,
    singer: singer1,
    venue: venue1
  )
  
  concert2 = Concert.create!(
    date: "2023-05-10",
    start_time: "20:00",
    end_time: "23:00",
    silver_ticket_price: 60.00,
    gold_ticket_price: 120.00,
    platinum_ticket_price: 240.00,
    singer: singer2,
    venue: venue2
  )
  
  # Create users
  user1 = User.create(
    email: 'user1@example.com',
    password: 'password',
    name: 'John Smith',
    img_url: 'https://example.com/img/user1.jpg',
    is_admin: false
  )
  
  user2 = User.create(
    email: 'user2@example.com',
    password: 'password',
    name: 'Jane Doe',
    img_url: 'https://example.com/img/user2.jpg',
    is_admin: false
  )
  
  # Create reservations
 Reservation.create([
    { seat_type: 'silver', user: user1, concert: concert1 },
    { seat_type: 'gold', user: user2, concert: concert1 },
  ])
  