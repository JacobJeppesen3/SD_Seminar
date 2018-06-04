pageextension 123456700 CSD_ResourceCardExt extends "Resource Card"
//CSD1.00 - 2018-01-01 - D. E. Veloper
{
    layout
    {
        addlast(General)
        {
            field("CSD_Resource Type"; "CSD_Resource Type")
            {
            }
            field("CSD_Quantity Per Day"; "CSD_Quantity Per Day")
            {
            }
        }
        addafter("Personal Data")
        {
            Group("Room")
            {
                field(CSD_Maximum; CSD_Maximum)
                {
                    Visible = ShowMaxField;
                }

            }
        }
    }
    trigger OnOpenPage();
    begin
        ShowMaxField :=(Type = Type::Machine);
        CurrPage.Update(false);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}