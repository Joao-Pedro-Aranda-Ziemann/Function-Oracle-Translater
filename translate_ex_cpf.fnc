create or replace function translate_ex_cpf(cpf in varchar2) return varchar2

 is

 v_cpf varchar(20);

begin

  --Função translate 
  v_cpf := translate(cpf, '@-.', ' ');
   
  dbms_output.put_line(v_cpf);

  return v_cpf;

exception

  when others then
  
    dbms_output.put_line('mensagem associada ao erro ' || sqlerrm);
    dbms_output.put_line(sqlcode);
  
end translate_ex_cpf;
