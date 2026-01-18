program Cheers;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;


type
     TLivro = class
     private
        nome : string;
        autor : string;
        id :  Integer;

      public
      constructor Create(NOME: string; AUTOR: string; ID: Integer ); overload;
       constructor Create; overload;

       procedure setNome(NOME: string);
       procedure setId(ID: Integer);
       procedure setAutor(AUTOR: string);
       procedure mostrarLivro;

       function getNome: string;
       function getAutor: string;
       function getId: Integer;


end;

{ CONSTRUCTOR }
constructor TLivro.Create;
begin
  inherited Create;
  nome:= 'nil'  ;
  autor:= 'nil';
  id:= 0;
end;

constructor TLivro.Create(NOME: string; AUTOR: string; ID: Integer);
begin
  inherited Create;
  Writeln('Construtor chamado!');
  Self.nome  := NOME;
  Self.autor := AUTOR;
  Self.id := ID;
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

{Mostrar Dados do livro}
procedure TLivro.mostrarLivro;
begin
  writeln('Nome: ' , nome);
  writeln('Autor: ', autor);
end;

{MAIN}
var
  livro : TLivro;
begin
  livro := TLivro.Create('SLA', 'NOME',787);

  livro.mostrarLivro();
  livro.free;
  Readln;
end.