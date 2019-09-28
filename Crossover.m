function    crosspop=crossover(crosspop,pop,nvar,ncross,v,w,W)

f=[pop.fit];
f=f./sum(f);
f=cumsum(f);


for n=1:2:ncross

    
    i1=find(rand<=f,1,'first');
    i2=find(rand<=f,1,'first');
    
    
p1=pop(i1).par;
p2=pop(i2).par;


j=randi([1 nvar-1]);

o1=[p1(1:j) p2(j+1:end)];
o2=[p2(1:j) p1(j+1:end)];




crosspop(n).par=o1;
crosspop(n).fit=fitness(o1,v,w,W);


crosspop(n+1).par=o2;
crosspop(n+1).fit=fitness(o2,v,w,W);

end

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                   %
%                          www.matlabnet.ir                         %
%                   Free Download  matlab code and movie            %
%                          Shahab Poursafary                        %
%                                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%