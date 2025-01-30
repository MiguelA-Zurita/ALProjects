table 50101 Videojuego
{
    DataClassification = ToBeClassified;
    LookupPageId = "Ficha videojuego";
    DrillDownPageId = "Ficha videojuego";
    fields
    {
        field(1; "Primary key"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'ID';
        }

        field(2; Nombre; Text[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Nombre';
        }

        field(3; "Fecha Lanzamiento"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Fecha lanzamiento';
        }

        field(4; Desarrollador; Text[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Desarrollador';
        }

        field(5; Editor; Text[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Editor';
        }

        field(6; Precio; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Precio';
        }

        field(7; Categoria; Enum Categoria)
        {
            DataClassification = ToBeClassified;
            Caption = 'Categoria';
        }


    }


    keys
    {
        key(Key1; "Primary key")
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
        rec."Primary key" := NoSerieManagment.GetNextNo(ConfGestVideojuegos."Serie Videojuegos")
    end;


}