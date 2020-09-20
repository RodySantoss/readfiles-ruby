require 'find'
Find.find('c:/') do |f|
    if FileTest.directory?(f)
        if File.basename(path).start_with?('.')
            Find.prune       # Don't look any further into this directory.
        else
            next
        end
        type = case
        when File.file?(f) then "F"
        when File.directory?(f) then "D"
        else "?"
    end
    puts "#{type}: #{f}"
end