table 50002 "Ship Availability Header"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Resource No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Resource;
        }
        field(5; "Ship Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "From Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "To Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(12; "From Region"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region";
        }
        field(15; "To Region"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region";
        }
    }

    keys
    {
        key(PK; "Document No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}