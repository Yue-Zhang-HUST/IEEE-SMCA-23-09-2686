function [s] = a_202203_first_Trust_mechanism(k,xj)

    cheat=0;
    continous_friend=0;
    sum_cheat=0;
    c=zeros(k,1);
    for i=1:k-1
        if xj(i) ~=  mij(i)
            cheat=cheat+1;
            continous_friend=0;
            c(cheat)=i;
            sum_cheat=sum_cheat+(-1/(k-c(cheat)));
        end
        
        if xj(i) ==  mij(i)
            continous_friend=continous_friend+1;
        end
    end
    
   
    
lemadj=continous_friend + sum_cheat;

s=lemadj;
end 