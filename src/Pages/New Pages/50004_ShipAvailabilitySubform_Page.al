page 50004 "Ship Availability Subform"
{
    PageType = ListPart;
    SourceTable = "Ship Availability Line";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
            }
        }

    }

    actions
    {
        area(Processing)
        {
            action("Fetch Customers")
            {
                ApplicationArea = All;

                trigger OnAction();
                var
                    Rec_ShipAvailabilityLine: Record "Ship Availability Line";
                    ResourceCustomerCatalog_Rec: Record "Resource Customer Catalog";
                    ShipAvailabilityHeader_Rec: Record "Ship Availability Header";
                begin
                    ShipAvailabilityHeader_Rec.Reset();
                    ShipAvailabilityHeader_Rec.SetRange("Document No.", Rec."Document No.");
                    if ShipAvailabilityHeader_Rec.FindFirst() then begin
                        ResourceCustomerCatalog_Rec.Reset();
                        ResourceCustomerCatalog_Rec.SetRange("Resource No.", ShipAvailabilityHeader_Rec."Resource No.");
                        if ResourceCustomerCatalog_Rec.FindSet() then begin
                            repeat
                                Rec_ShipAvailabilityLine.Init();
                                Rec_ShipAvailabilityLine."Document No." := ShipAvailabilityHeader_Rec."Document No.";
                                Rec_ShipAvailabilityLine."Customer No." := ResourceCustomerCatalog_Rec."Customer No.";
                                Rec_ShipAvailabilityLine.Insert();
                            until ResourceCustomerCatalog_Rec.Next() = 0;
                        end;
                    end;
                end;
            }
        }
    }
}