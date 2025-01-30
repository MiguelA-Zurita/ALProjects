table 50103 Biblioteca
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "ID usuario"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Id usuario';
            TableRelation = usuario.Id;
        }

        field(2; "Id videojuego"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Id videojuego';
            TableRelation = Videojuego."Primary key";
        }

        field(3; "Nombre Usuario"; Text[100])
        {
            Caption = 'Nombre Usuario';
            FieldClass = FlowField;
            CalcFormula = lookup(usuario."Nombre Completo" where(ID = field("ID usuario")));
            Editable = false;
        }

        field(4; "Nombre videojuego"; text[200])
        {
            Caption = 'Nombre videojuego';
            FieldClass = FlowField;
            CalcFormula = lookup(Videojuego.Nombre where("Primary key" = field("Id videojuego")));
        }

        field(5; "Fecha adquisicion"; DateTime)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }

    }

    keys
    {
        key(Key1; "ID usuario", "Id videojuego")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    begin
        rec."Fecha adquisicion" := CurrentDateTime;
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}