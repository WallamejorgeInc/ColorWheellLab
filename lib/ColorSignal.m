function y = ColorSignal(x,dx,Color)
y=x-x; 

if (strcmp(Color,'Rojo'))
    y=(0.5+0.5*(sin(x+dx)));
end

if (strcmp(Color,'Azul'))
    y=(0.5+0.5*(sin(x+dx)));
end

end