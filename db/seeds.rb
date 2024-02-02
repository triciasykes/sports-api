user1 = User.where(email: "testy@example.com").first_or_create(password:"password123", password_confirmation:"password123")
user2 = User.where(email: "testyLou@example.com").first_or_create(password:"password123", password_confirmation:"password123")


user1_teams = [
  {
    city: "San Francisco",
    mascot: "49ers",
    season_wins: 12,
    season_losses: 5,
    postseason: true
  },
  {
    city: "Detroit",
    mascot: "Lions",
    season_wins: 12,
    season_losses: 5,
    postseason: true
  }
]

user2_teams = [
  {
    city: "Denver",
    mascot: "Broncos",
    season_wins: 8,
    season_losses: 8,
    postseason: false
  },
  {
    city: "Kansas City",
    mascot: "Chiefs",
    season_wins: 11,
    season_losses: 6,
    postseason: true
  }
]

user1_teams.each do |team|
  user1.teams.create(team)
  p "team created: #{team}"
end

user2_teams.each do |team|
  user2.teams.create(team)
  p "team created: #{team}"
end