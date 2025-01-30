page 50103 "Ficha videojuego"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Videojuego;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Primary key"; Rec."Primary key")
                {
                    Editable = false;
                }
                field(Nombre; Rec.Nombre)
                {

                }
                field("Fecha Lanzamiento"; Rec."Fecha Lanzamiento")
                {

                }
                field(Desarrollador; Rec.Desarrollador)
                {

                }
                field(Editor; Rec.Editor)
                {

                }
                field(Precio; Rec.Precio)
                {

                }
                field(Categoria; Rec.Categoria)
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}