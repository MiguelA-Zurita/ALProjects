page 50101 "Lista videojuego"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Videojuego;
    Editable = false;
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Primary key"; Rec."Primary key")
                {

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
        area(Factboxes)
        {

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
}