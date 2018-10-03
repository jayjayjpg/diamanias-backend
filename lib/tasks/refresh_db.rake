namespace :db do
  desc "Drop, Migrate and Seed DB."
  task reset: [ 'db:drop', 'db:create', 'db:migrate', 'db:seed' ] do
    puts 'Reseeding completed.'
  end
end
