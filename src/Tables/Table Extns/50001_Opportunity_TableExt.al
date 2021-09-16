tableextension 50001 "Opportunity Ext" extends Opportunity
{
    fields
    {
        // Add changes to table fields here
        field(50000; "Ship Reference No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}