tableextension 50000 "Resource Ext" extends Resource
{
    fields
    {
        field(50000; "NAME OF SHIP"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50001; "TYPE OF VESSEL"; Enum "TYPE OF VESSEL")
        {
            DataClassification = ToBeClassified;
        }
        field(50002; "FLAG (Country)"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region".Code;
        }
        field(50003; "IMO NO."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50004; "YEAR BUILT"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50005; "CLASSIFICATION SOCIETY"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50007; "P & I CLUB"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50008; "NET TONNAGE"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50009; "GROSS TONNAGE "; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50010; "DEAD WEIGHT"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50011; "SUMMER DRAUGHT"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50012; "LOA"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50013; "LBP"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50014; "CARGO GEAR"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50015; "HOLD NO.1 DIMENSION"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50016; "HOLD NO.2 DIMENSION"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50017; "HOLD NO.3 DIMENSION"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50018; "HOLD NO.4 DIMENSION"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50019; "HOLD NO.5 DIMENSION"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50020; "HOLD NO.6 DIMENSION"; Text[20])
        {
            DataClassification = ToBeClassified;
        }





    }


}