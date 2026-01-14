program Cheers;

type
     TLivro = class
        private
        nome : string;
        autor : string;
        id :  Integer;

      public
      constructor Create(NOME: string; AUTOR: string; ID: Integer );
       procedure setNome(NOME: string);
       procedure setId(ID: Integer);
       procedure setAutor(AUTOR: string);

       function getNome: string;
       function getAutor: string;
       function getId: Integer;


end;

{ CONSTRUCTOR }
constructor TLivro.Create(NOME: string; AUTOR: string; ID: Integer );
begin
  nome  := NOME;
  autor := AUTOR;
  id := ID;
end;

{SETS LIVRO}
procedure TLivro.setNome(NOME: string);
begin
  nome:= NOME;
end;

procedure TLivro.setId(ID: Integer);
begin
  id:= ID;
end;

procedure TLivro.setAutor(AUTOR: string);
begin
  autor:= AUTOR;
end;

{GETS LIVRO}
function TLivro.getNome: string;
begin
  Result:= nome;

end;

function TLivro.getAutor: string;
begin
  Result:= autor;
end;

function TLivro.getId: Integer;
begin
  Result:= id;
end;


{MAIN}

var 
   livro: TLivro('SLA','777','Senhor dos Aneis')
begin
   writeln(livro.getAutor);
   writeln(livro.getNome);
   writeln(livro.getId);
    livro.free;
end.