function  mutpop=mutation(mutpop,pop,nvar,v,w,W,nmut,npop)




for n=1:nmut


   i=randi([1 npop]); 
    
sol=pop(i).par;




j=randi([1 nvar]);

sol(j)=1-sol(j);



mutpop(n).par=sol;
mutpop(n).fit=fitness(sol,v,w,W);


end



end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                   %
%                          www.matlabnet.ir                         %
%                   Free Download  matlab code and movie            %
%                          Shahab Poursafary                        %
%                                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
