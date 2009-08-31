  namespace :bootstrap do
    desc "Bootstrap a set of admin users"
    task :admins => :environment do
      puts "Bootstrapping admins"
    end
  
    task :categories => :environment do
      puts "Bootstrapping categories"
    end
  
    task :zip_codes => :environment do
      puts "Bootstrapping zip_codes"
    end
  
    desc "Run all bootstrap tasks"
    task :all do
      tasks = tasks_in_namespace("bootstrap")
      tasks.each do |task|
        Rake::Task["#{task.name}"].invoke
      end
    end  
  end


  private
    def tasks_in_namespace(ns)
      #grab all tasks in the supplied namespace
      tasks = Rake.application.tasks.select { |t| t.name =~ /^#{ns}:/ }
    
      #make sure we don't include the :all task
      tasks.reject! { |t| t.name =~ /:all/ }
    end