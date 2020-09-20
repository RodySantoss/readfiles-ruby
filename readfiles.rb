puts "-" * 20
puts "LEITOR DE ARQUIVOS"
puts "-" * 20
puts "Você prefere digitar o diretório ou ir seguindo a partir de 'Meu Computador'? (1 para diretorio e 2 para ir seguindo)"
opt = gets.to_i
arr = Array.new
diretorio = "C:/"
if opt == 1
    puts "Digite o diretorio com o nome do arquivo!"
    diretorio = gets.to_s
    File.open(diretorio) do |f1|
        while line = f1.gets
            puts line
       end
    end
elsif opt == 2
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
    puts diretorio
    File.open(diretorio) do |f1|
        while line = f1.gets
            puts line
       end
    end
else
    "Opção inválida!"
end
