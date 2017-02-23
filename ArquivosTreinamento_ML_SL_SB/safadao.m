

function [str_safadeza,str_anjo] = safadao(dia,mes,ano)
%1:mes = de i até mes

if ano > 99
    warndlg('Digite ano com 2 números')
    myctry = inputdlg( 'Digite o Ano format AA')
    %ano = myctry;
    ano =str2double(cell2mat(myctry));
   
end
    
safadeza = sum((1:mes)+(ano/100)*(50-dia));

if safadeza> 100
    safadeza = 100;

anjo = 100 - safadeza;

safadeza = num2str(safadeza);
str_safadeza = ['Você é:',safadeza,'% vagabundo']; 

anjo = num2str(anjo);
str_anjo = ['Você é:',anjo,'% anjo']; 

end