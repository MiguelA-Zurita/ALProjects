table 50104 Comentarios
{
    DataClassification = ToBeClassified;
    LookupPageId = "Ficha Comentarios";
    DrillDownPageId = "Ficha Comentarios";
    fields
    {
        field(1; Id; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Caption = 'ID';
        }
        field(2; Usuario; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = usuario.ID;
            Caption = 'Usuario';
        }

        field(3; Videojuego; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Videojuego."Primary key";
            Caption = 'Videojuego';
        }

        field(4; Comentario; Text[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Comentario';
        }

        field(5; Estrellas; Integer)
        {
            DataClassification = ToBeClassified;
            InitValue = 1;
            MinValue = 1;
            MaxValue = 10;
        }
    }

    keys
    {
        key(Key1; Id)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

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