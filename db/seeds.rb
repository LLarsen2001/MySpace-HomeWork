
Userjob.destroy_all
Job.destroy_all

User.destroy_all

status = [
    'wishlist',
    'applied',
    'interview',
    'offer recieved',
    'offer accepted',
    ]
    10.times do
     uscr = User.create(
      email:Faker::Internet.email,
       password:'123456'
      )

        u = User.create(
         
         email:Faker::Internet.email,
         password:'123456'
      )

      10.times do
        j = Job.create(
            job_name:Faker::Job.title,
             salary:400000,
             description:Faker::Job.key_skill,
             remote:Faker::Boolean.boolean,
             location:(Faker::Address.city)+ (", ")+( Faker::Address.state_abbr),
             isfilled:Faker::Boolean.boolean,
             
             user_id:uscr.id                 
            )
      
             uj = Userjob.create(
             status:status.sample,
             user_id:u.id,
             job_id:j.id
            )
      
      end
    end
      
    
      puts "user size:#{User.all.size}"
      puts "userjobs size:#{Userjob.all.size}"
      puts "Job size:#{Job.all.size}"
