train_data = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

#save direction of train 111 into a variable

# here's a better way sean worked out with me
train111 = train_data.find do |trainx|
  trainx[:train] == "111"
end

train111_direction = train111[:direction]

# here's my first way
# train111_direction = ""
# train_data.each do |trainx|
#   if trainx[:train] == "111"
#     train111_direction = trainx[:direction]
#   end
# end

#  now find the frequency of train 80B
train80b = train_data.find do |trainx|
  trainx[:train] == "80B"
end

train80b_freq = train80b[:frequency_in_minutes]

#  now save the direction of train 610
train610 = train_data.find do |trainx|
  trainx[:train] == "610"
end

train610_direction = train610[:direction]

#Create an empty array. Iterate through each train and
## add the name of the train into the array if it travels north.

north_train_names = []

north_trains = train_data.find_all do |trainx|
  trainx[:direction] == "north"
end
# north_trains is now an array of hashes with only north-bound trains
north_trains.each do |trainx|
  north_train_names << trainx[:train]
end

# north_train_names is now an array containing only the train numbers of north_trains

east_train_names = []

east_trains = train_data.find_all do |trainx|
  trainx[:direction] == "east"
end

east_trains.each do |trainx|
  east_train_names << trainx[:train]
end

# here's the method to accomplish the above

def save_directions(data, direction)
  train_names = []

  trains = data.find_all do |trainx|
    trainx[:direction] == direction
  end

  trains.each do |trainx|
    train_names << trainx[:train]
  end
  return train_names
end

puts "Northbound trains:\n#{save_directions(train_data, "north")}"
puts "Eastbound trains:\n#{save_directions(train_data, "east")}"

#  now I will add a first_departure_time key/value pair to, say, the 3rd train in the array

train_data[2][:first_departure_time] = 7
