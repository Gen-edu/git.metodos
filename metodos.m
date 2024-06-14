#metodo de falsa posicion
clc;
xi = 0;
xu = 1;
f = '2*x^3+x-1';
f = inline(f);
if f(xi)*f(xu)<0

  i=1;
  printf('%s\t\t' ,'i' ,'xi', 'xu', 'xr', 'f(xr)' , 'Ea' );
  printf('\n');
  xv=0;

  while i < 6
    xr = xu -((f(xu)*(xi-xu))/(f(xi)-f(xu)));
    ea = abs((xr - xv )/xr)*100;
    fxr = f(xr);
    printf('%d\t\t', i);
    printf('%0.4f\t\t', xi);
    printf('%0.4f\t\t', xu);
    printf('%0.4f\t\t', xr);
    printf('%0.4f\t\t', fxr);
    printf('%0.2f\t', ea);
    printf('\n');
    i++;

    if f(xi)*f(xr)<0
      xu=xr;
      xv=xr;
    end

    if f(xi)*f(xr)>0
      xi=xr;
      xv=xr;
    end

    if f(xi)*f(xr)==0
      printf('\n')
      printf('%D', xr);
      break;
   end

    endwhile

  else
    printf('no se puede resolver por el metodo de la falsa posecion');
    end


      printf('\n la raiz aproximada es %0.4f', xr);
      printf('\n')

