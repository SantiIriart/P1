program Ej7;
var
tipo : Char;
monto, total : Real;
begin
	write('Ingrese el saldo anterior de la cuenta: ');
	readln(total);
	writeln;
	tipo := 'A';
	while (tipo <> 'X') and (tipo <> 'x') do
		begin
			if tipo <> 'A' then
				begin
					write('Ingresa el monto: ');
					readln(monto);
					writeln;
					case tipo of
						'D', 'd': total := total + monto;
						'R', 'r': total := total - monto;
						else writeln(tipo, ' no es un tipo válido.');
					end;
				end;
			write('Ingresa D para deposito, R para retiro o X para salir: ');
			readln(tipo);
		end;
	writeln('El saldo final es: ', total:5:2);
end.