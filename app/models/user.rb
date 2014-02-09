class User < ActiveRecord::Base
  has_many :messages

  def answer_correct?(user_answer)
    puts "Answer for #{name} is #{answer}"
    puts "user_answer for #{name} is #{user_answer}"
    /#{answer}/i.match(user_answer)
  end
end

