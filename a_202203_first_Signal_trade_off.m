function [s] = a_202203_first_Signal_trade_off(k,xj)
%principle 1
if xj(1) ~=  mij(1)
    continous_cheat=0;
    continous_friend=0;
    for i=1:k-1
        if xj(i) ~=  mij(i)
            continous_cheat=continous_cheat+1;
            friend=continous_friend;
            continous_friend=0;
        end
        
        if xj(i) ==  mij(i)
            continous_friend=continous_friend+1;
            cheat=continous_cheat;
            continous_cheat=0;
        
        end
    end
    
    if continous_friend >= cheat
        s=1;
    else 
        s=0;
    end
end    

%principle 2 and principle 3

if xj(1) ==  mij(1)
    continous_cheat=0;
    continous_friend=0;
    for i=1:k-1
        if xj(i) ~=  mij(i)
            continous_cheat=continous_cheat+1;
            friend=continous_friend;
            continous_friend=0;
        end
        
        if xj(i) ==  mij(i)
            continous_friend=continous_friend+1;
            cheat=continous_cheat;
            continous_cheat=0;
        
        end
    end
    
    if continous_friend >= 2*cheat
        s=1;
    else 
        s=0;
    end
end

end 