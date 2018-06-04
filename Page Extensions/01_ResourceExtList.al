pageextension 123456701 CSD_ResourceListExt extends "Resource List"
{
    layout
    {

        modify(Type)
        {
            Visible = Showtype;
        }
        addafter(Type)

        {
            field("CSD_Resource Type";"CSD_Resource Type")
            {

            }
            field(CSD_Maximum;CSD_Maximum)
            {
                Visible = ShowMaxField;
            }
        }

    }

    actions
    {
        // Add changes to page actions here
    }

    trigger OnOpenPage();
    begin
        FilterGroup(3);

        Showtype := (GetFilter(Type) = '');

        ShowMaxField :=
          (GetFilter(Type) = format(Type::Machine));

        FilterGroup(0);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;

        [InDataSet]
        Showtype: Boolean;
}