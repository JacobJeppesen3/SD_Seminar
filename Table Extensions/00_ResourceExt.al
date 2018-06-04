tableextension 123456700 CSD_ResourceExt extends Resource
//CSD1.00 - 201-01-01 - D. E. Veloper
// Chapter 5 - Lab 1-1
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate();

            begin
                rec.TestField("Unit Cost");
            end;
        }
        field(123456701; "CSD_Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal", "External";
            OptionCaption = 'Internal,External';
        }
        field(123456702; CSD_MAximum; Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(123456703; "CSD_Quantity Per Day"; Integer)
        {
            Caption = 'Quantity Per Day';
        }
    }
}