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

{Procedimentos]

{MAIN}
var
  livro : array of TLivro;
  nome: string;
  autor: string;
  id: integer;
  tamanho: integer;
begin
  Write('Digite o numero de livros que quer cadastrar');
  Readln(tamanho);
  SetLength(livro, tamanho);
  for var i:= 0  to tamanho-1 do
  begin
    Writeln('Cadastarando livro:', i);
    Write('Digite o nome:');
    Readln(nome);
    Write('Digite o autor:');
    Readln(autor);
    Write('Digite o id:');
    Readln(id);
    livro[i] := TLivro.Create(autor, nome, id);
  end;


  Write('Libereando memoria');
  for var i:= 0  to  tamanho-1 do
  begin

    livro[i].free;
  end;

  Readln;
end.