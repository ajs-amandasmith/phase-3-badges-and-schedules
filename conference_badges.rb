# Write your code here.

require 'pry'

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names_array)
  names_array.map { |name| badge_maker(name)}
end

def assign_rooms(speaker_array)
  speaker_array.map.with_index do |speaker, index|
    "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
  end
end

def printer(speaker_array)
  badges = batch_badge_creator(speaker_array)
  badges.each { |badge| puts badge }
  rooms = assign_rooms(speaker_array)
  rooms.each { |room| puts room }
end