#coding: utf-8

if ARGV.length < 1
   puts "Please input target folder"
end

folder = ARGV.pop

Dir.chdir(folder)

Dir.glob("*.avi") { |file|  
   input = file
   output = File.basename(file,".*")+".mp4"
   
   puts `ffmpeg -i "#{input}" -vcodec libx264 -acodec libfaac "#{output}"`
}