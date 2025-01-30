table 50105 Logros
{
    DataClassification = ToBeClassified;
    LookupPageId = "Logros";
    DrillDownPageId = "Logros";
    fields
    {
        field(1; Usuario; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = usuario.id;
            Caption = 'ID';
        }

        field(2; Videojuego; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Videojuego';
        }

        field(3; Logro; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Logro';
            NotBlank = true;
        }

        field(4; "Fecha adquisicion"; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Fecha adquisicion';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; Usuario, Videojuego, Logro)
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