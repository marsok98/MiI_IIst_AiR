clear all;

n = 10000;
x = zeros(1,n);
x(1) = 2;
z = [25.4,4.3,20.3];

for j = 1:length(z)
    for i = 1:n
        x(i+1) = x(i) * z(j) - floor(x(i)*z(j));
    end
    figure(j)
    plot(1:n,x(1:n),'linestyle','none','marker','.') 
    xlabel('Kolejne probki')
    ylabel('Wynik losowania')
    title("Losowanie dla z = " + z(j) + "  oraz X_0 = " + x(1))
%%proba zrobienia sprawdzania okresu generatora
     for k = 3:n
         to_compare=x(2);
          if to_compare  == x(k) 
               disp(k);
           end
     end
end
