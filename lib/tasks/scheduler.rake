task :update_user_reps => :production do
  puts "Updating rep scores..."
  User.update_reputation
end
