require "time"

task :generate_sitemap do
  if Time.now.thursday?
     Rake::Task["sitemap:refresh"].invoke
   end
end