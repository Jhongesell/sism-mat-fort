clear;
clc;
syms 


%DATOS DE INGRESO
%================
Fy=25;         %fuerza de fluencia
k=8.5;          %rigidez inicial
p=0.017;       %valor no identificado
B=0.90;         %
L=0.10;         % simpre se cumple B+L=1
n=1;            %
%P=0.0135;       % valor de P?
%Pmax=0.2844;    %valor de como dato
uy=Fy/k;
a=0;

disp('------------------- DATOS PARA EL ANALISIS ------------------------')
NC=input('Vector de desplazamientos =[...]= ');
disp('-------------------------------------------------------------------')
N=length(NC)/2;

for i=1:N
 fprintf('Ciclo %i.\n\n',i)
 PP=NC(1,2*i-1);
 PN=NC(1,2*i);
 a=a+i; 
 if a==1;
     %Primer caso
     zz=+1;
     uu=+1;
     uin=0;
     zin=0;
     syms z u z(u) 
     Eq3=diff(z,u)==1/uy*(1-z^n*(B*sign(zz*uu)+L));
     Funcion=eval(dsolve(Eq3,'z(uin)=zin','u'))
     u=PP;
     z=eval(Funcion);
     clear u
     syms u
     F=p*k*u+(1-p)*Fy*Funcion;
     
     
     %Graficamos
     u=uin:0.0001:PP;
     F
     %y1=Funcion
     plot(u,eval(F),'color','r')
     grid on
     hold on
     u=PP;
     
     %Segundo caso
     zz=+1;
     uu=-1;
     uin=u;
     zin=z;
     clear z u
     syms z u z(u) 
     Eq3=diff(z,u)==1/uy*(1-z^n*(B*sign(zz*uu)+L));
     Funcion=eval(dsolve(Eq3,'z(uin)=zin','u'))
     f=@(u)eval(Funcion);
     ux=fzero(f,0);
     clear u
     syms u
     F=p*k*u+(1-p)*Fy*Funcion;
     
     %Graficamos
     u=PP:-0.0001:ux;
     F
     %y1=Funcion
     plot(u,eval(F),'color','r')
     grid on
     hold on
     %u=PP;
     
     %Tercer caso
     zz=-1;
     uu=-1;
     uin=ux;
     zin=0;
     %clear ux
     syms z u z(u) 
     Eq3=diff(z,u)==1/uy*(1+z^n*(B*sign(zz*uu)+L));
     Funcion=eval(dsolve(Eq3,'z(uin)=zin','u'))
     u=PN;
     z=eval(Funcion);
     clear u
     syms u
     F=p*k*u+(1-p)*Fy*Funcion;
     
     %Graficamos
     u=ux:-0.0001:PN;
     F
     y1=Funcion;
     plot(u,eval(F),'color','r')
     grid on
     hold on
     %u=PP;
     clear ux
     
     %Cuarto caso
     zz=-1;
     uu=+1;
     uin=PN;
     zin=z;
     clear u z
     syms z u z(u) 
     Eq3=diff(z,u)==1/uy*(1+z^n*(B*sign(zz*uu)+L));
     Funcion=eval(dsolve(Eq3,'z(uin)=zin','u'))
     %z=eval(Funcion)
     f=@(u)eval(Funcion);
     ux=fzero(f,0)
     clear u
     syms u
     F=p*k*u+(1-p)*Fy*Funcion;
     
     %Graficamos
     u=PN:0.0001:ux;
     F
     %y1=Funcion
     plot(u,eval(F),'color','r')
     grid on
     hold on
     %u=PP;
               
 else
     %Primer caso
     zz=+1;
     uu=+1;
     uin=ux
     zin=0;
     clear ux z
     syms z u z(u) 
     Eq3=diff(z,u)==1/uy*(1-z^n*(B*sign(zz*uu)+L));
     Funcion=eval(dsolve(Eq3,'z(uin)=zin','u'))
     u=PP;
     z=eval(Funcion);
     clear u
     syms u
     F=p*k*u+(1-p)*Fy*Funcion;
     
     %Graficamos
     u=uin:0.01:PP;
     %y1=Funcion
     F
     plot(u,eval(F),'color','r')
     grid on
     hold on
     u=PP;
     
     %Segundo caso
     zz=+1;
     uu=-1;
     uin=u;
     zin=z;
     clear z u
     syms z u z(u) 
     Eq3=diff(z,u)==1/uy*(1-z^n*(B*sign(zz*uu)+L));
     Funcion=eval(dsolve(Eq3,'z(uin)=zin','u'));
     f=@(u)eval(Funcion);
     ux=fzero(f,0);
     clear u
     syms u
     F=p*k*u+(1-p)*Fy*Funcion;
     
     %Graficamos
     u=PP:-0.001:ux;
     %y1=Funcion
     F
     plot(u,eval(F),'color','r')
     grid on
     hold on
     %u=PP;
     
     %Tercer caso
     zz=-1;
     uu=-1;
     uin=ux;
     zin=0;
     %clear ux
     syms z u z(u) 
     Eq3=diff(z,u)==1/uy*(1+z^n*(B*sign(zz*uu)+L));
     Funcion=eval(dsolve(Eq3,'z(uin)=zin','u'));
     u=PN;
     z=eval(Funcion);
     clear u
     syms u
     F=p*k*u+(1-p)*Fy*Funcion;
     
     %Graficamos
     u=ux:-0.001:PN;
     %y1=Funcion
     F
     plot(u,eval(F),'color','r')
     grid on
     hold on
     %u=PP;
     clear ux
     
     %Cuarto caso
     zz=-1;
     uu=+1;
     uin=PN;
     zin=z;
     clear u z
     syms z u z(u) 
     Eq3=diff(z,u)==1/uy*(1+z^n*(B*sign(zz*uu)+L));
     Funcion=eval(dsolve(Eq3,'z(uin)=zin','u'));
     %u=PN;
     z=eval(Funcion);
     f=@(u)eval(Funcion);
     ux=fzero(f,0);
     clear u
     syms u
     F=p*k*u+(1-p)*Fy*Funcion;
     
     %Graficamos
     u=PN:0.001:ux;
     %y1=Funcion
     F
     plot(u,eval(F),'color','r')
     grid on
     hold on
     %u=PP;
     
             
 end
end    



