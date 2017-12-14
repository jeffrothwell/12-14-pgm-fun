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

train80b_direction = train80b[:frequency_in_minutes]
puts train80b_direction
