group 'frontend' do
  guard 'coffeescript', :input => 'app/assets/coffeescript', :output=>'public/js'
  # since style.sass will include all other files, we don't need to guard the entire directory
  guard 'sass', :input => 'app/assets/sass/style.sass', :output=>'public/css', :style => :expanded
end