table 50100 usuario
{
    DataClassification = ToBeClassified;
    LookupPageId = "Ficha Usuario";
    DrillDownPageId = "Ficha Usuario";
    fields
    {
        field(1; ID; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'ID';
        }

        field(2; Genero; Enum "Generos")
        {
            DataClassification = ToBeClassified;
            Caption = 'Genero';
        }

        field(3; "Nombre Completo"; Text[100])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;
            Caption = 'Nombre completo';
        }

        field(4; Correo; Text[50])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
            ExtendedDatatype = EMail;
        }

        field(5; telefono; Code[9])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }

        field(6; "Fecha Nacimiento"; Date)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(7; Contrasena; Text[18])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
            ExtendedDatatype = Masked;
        }
    }



    keys
    {
        key(Key1; ID)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        ConfGestVideojuegos: Record "Config Gest Videojuegos";
        NoSerieManagment: Codeunit "No. Series";
    begin
        ConfGestVideojuegos.Get();
        ConfGestVideojuegos.TestField("Serie Usuarios");
        rec.Id := NoSerieManagment.GetNextNo(ConfGestVideojuegos."Serie Videojuegos")
    end;

    trigger OnDelete()
    begin

    end;

}