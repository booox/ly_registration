require 'csv'
namespace :dev do

  task :import_user_csv_file => :environment do
    success = 0
    failed_records = []
    failed_records_profile = []

    CSV.foreach("#{Rails.root}/tmp/scuser.csv") do |row|
      user = User.new(
                      :username => row[1],
                      :nickname => row[0],
                      :email => "#{row[2]}@nb2j.com",
                      :password => row[2],
                      :password_confirmation => row[2]
                      )

      if user.save
        success += 1
        @user = User.find_by(:username => row[1])
        profile = Profile.create!(name: row[0], phonenumber: row[2], user_id: @user.id, gender: "male", cnid: "123456789012345678")
        if profile.save
          puts row[0]
        else
          failed_records_profile << [row, user]
        end
      else
        failed_records << [row, user]
      end
    end

    puts "总共汇入 #{success} 笔，失败 #{failed_records.size} 笔"

    failed_records.each do |record|
      puts "#{record[0]} ---> #{record[1].errors.full_messages}"
    end

    failed_records_profile.each do |record|
      puts "#{record[0]} ---> #{record[1].errors.full_messages}"
    end
  end



  task :import_lines_csv_file => :environment do
    success = 0
    failed_records = []
    failed_records_profile = []



    CSV.foreach("#{Rails.root}/tmp/lines.csv") do |row|
      @user = User.find_by(:username => row[1])
      @batch = Batch.find_by(:title => row[3])
      @line = Line.find_by(:title => row[4])

      registration = Registration.new(
                      :user_id => @user.id,
                      :batch_id => @batch.id,
                      :line_id => @line.id,
                      :is_room_share => false,
                      )

      if registration.save
        success += 1
        puts row[0]
      else
        failed_records << [row, registration]
      end
    end

    puts "总共汇入 #{success} 笔，失败 #{failed_records.size} 笔"

    failed_records.each do |record|
      puts "#{record[0]} ---> #{record[1].errors.full_messages}"
    end
  end

end
