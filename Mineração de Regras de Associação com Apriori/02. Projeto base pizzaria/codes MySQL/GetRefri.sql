# Função para transformar as variaveis de valor da refri em booleanas

delimiter &&
create function GetRefri(valor_refrigerante float) returns varchar(20)
begin
	declare refri varchar(20);
    if(valor_refrigerante > 0) then
		set refri = 'Refri Sim';
     else
		set refri = 'Refri Nao';
	end if;
	return refri;

end &&
delimiter &&;
	