# Função para transformar as variaveis de valor da borda em booleanas

delimiter &&
create function GetBorda(valor_borda float) returns varchar(20)
begin
	declare borda varchar(20);
    if(valor_borda > 0) then
		set borda = 'Borda Sim';
     else
		set borda = 'Borda Nao';
	end if;
	return borda;

end &&
delimiter &&;
	