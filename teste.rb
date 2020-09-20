count = 1
    Dir.each_child(diretorio) do |x| 
        arr << x 
        puts "#{count} - #{x}"
        puts "-" * 20
        count += 1
    end
    aux = gets.to_i
    diretorio = "#{diretorio}#{arr[aux-1].to_s}"
    puts diretorio
    while File.file?(diretorio) == false
        arr = [""]
        count = 1
        Dir.each_child(diretorio) do |x|
            #puts x
            arr << x 
            #puts arr
            puts "#{count} - #{x}"
            puts "-" * 20
            count += 1
        end
        count = 1
        aux = gets.to_i
        diretorio = "#{diretorio}/#{arr[aux].to_s}"
        puts diretorio
    end