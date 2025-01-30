page 50104 "Lista Biblioteca"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Biblioteca;
    Editable = true;
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("ID usuario"; Rec."ID usuario")
                {

                }
                field("Id videojuego"; Rec."Id videojuego")
                {

                }
                field("Nombre Usuario"; Rec."Nombre Usuario")
                {
                    Editable = false;
                }
                field("Nombre videojuego"; Rec."Nombre videojuego")
                {
                    Editable = false;
                }
                field("Fecha adquisicion"; Rec."Fecha adquisicion")
                {
                    Editable = false;
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