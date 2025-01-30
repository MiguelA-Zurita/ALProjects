page 50105 "Llista usuarios"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = usuario;
    Editable = false;
    CardPageId = "Ficha Usuario";
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Id; Rec.Id)
                {

                }

                field("Nombre Completo"; Rec."Nombre Completo")
                {

                }

                field(telefono; Rec.telefono)
                {

                }

                field(Correo; Rec.Correo)
                {

                }

                field("Fecha Nacimiento"; Rec."Fecha Nacimiento")
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