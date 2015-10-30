car_names = [
  "Lynetta",
  "Nancie",
  "Rueben",
  "Torie",
  "Tamela",
  "Christiane",
  "Lilia",
  "Clemente",
  "Onie",
  "Carmina",
  "Alejandrina",
  "Williemae",
  "Lea",
  "Corene",
  "Elfriede",
  "Emelda",
  "Fe",
  "Tameika",
  "Lawerence",
  "Tammie",
  "Argentina",
  "Virgina",
  "Erasmo",
  "Pierre",
  "Alec",
]

user_names = [
  "Misty Chambers",
  "Emmett Reynolds",
  "Jessica Lyons",
  "Samuel Luna",
  "Isaac Black",
  "Aubrey Roy",
  "Bruce Schneider",
  "Cornelius Meyer",
  "Darryl Ortiz",
  "Norma Lindsey",
  "Ana Glover",
  "Lynne Bass",
  "Scott Hayes",
  "Hope Floyd",
  "Lois Cross",
  "Sheldon Poole",
  "William Norman",
  "Essie Welch",
  "Hector Pierce",
  "Natalie Fisher",
  "Marion Matthews",
  "Gertrude Riley",
  "Wade Dean",
  "Zachary Martin",
  "Patty Graham",
]

car_colors = ["blue", "black", "white", "light gray", "red"]

user_names.shuffle.each_with_index do |name, i|
  first_name = name.split(' ')[0]
  last_name = name.split(' ')[1]
  user = User.create(first_name: first_name,
                     last_name: last_name,
                     email: "#{first_name.downcase}.#{last_name.downcase}@gmail.com",
                     phone_number: rand.to_s[2..11],
                     car_name: car_names[i],
                     car_color: car_colors.shuffle.first,
                     previous_rank: i + 1)

  rand(15..20).times do
    user.earnings.create(amount: rand(10.00..200.00).round(2),
                         earned_at: rand(1.week).seconds.ago)
    user.driving_stats.create(miles_driven: rand(1..50),
                              started_at: rand(1.week).seconds.ago,
                              ended_at: rand(1.week).seconds.ago)
  end
end
