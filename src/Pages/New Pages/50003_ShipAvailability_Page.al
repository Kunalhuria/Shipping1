page 50003 "Ship Availability"
{
    PageType = Document;
    SourceTable = "Ship Availability Header";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field("Resource No."; Rec."Resource No.")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        Resource_Rec: Record Resource;
                    begin
                        if Resource_Rec.Get(Rec."Resource No.") then
                            Rec."Ship Name" := Resource_Rec.Name;
                    end;
                }
                field("Ship Name"; Rec."Ship Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("From Date"; Rec."From Date")
                {
                    ApplicationArea = All;
                }
                field("To Date"; Rec."To Date")
                {
                    ApplicationArea = All;
                }
                field("From Region"; Rec."From Region")
                {
                    ApplicationArea = All;
                }
                field("To Region"; Rec."To Region")
                {
                    ApplicationArea = All;
                }
            }
            part("Ship Availability Subform"; "Ship Availability Subform")
            {
                ApplicationArea = All;
                SubPageLink = "Document No." = field("Document No.");
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Send Information")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedIsBig = true;
                Image = SendToMultiple;

                trigger OnAction()
                var
                    Rec_Opportunity: Record Opportunity;
                    ShipAvailabilityLine_Rec: Record "Ship Availability Line";
                    NoSeriesManagement_CU: Codeunit NoSeriesManagement;
                    MarketingSetup_Rec: Record "Marketing Setup";
                    Customer_Rec: Record Customer;
                begin
                    Rec_Opportunity.Reset();
                    Rec_Opportunity.SetRange("Ship Reference No.", Rec."Document No.");
                    if Rec_Opportunity.FindFirst() then
                        Error('Already Generated for Document No. - %1.', Rec."Document No.");

                    ShipAvailabilityLine_Rec.Reset();
                    ShipAvailabilityLine_Rec.SetRange("Document No.", Rec."Document No.");
                    if ShipAvailabilityLine_Rec.FindSet() then begin
                        repeat
                            MarketingSetup_Rec.Get();
                            Rec_Opportunity.Init();
                            Rec_Opportunity."No." := NoSeriesManagement_CU.GetNextNo(MarketingSetup_Rec."Opportunity Nos.", Today, true);
                            if Customer_Rec.Get(ShipAvailabilityLine_Rec."Customer No.") then begin
                                Rec_Opportunity.Validate("Contact No.", Customer_Rec."Primary Contact No.");
                            end;
                            Rec_Opportunity."Creation Date" := Today;
                            ShipAvailabilityLine_Rec.CalcFields("Customer Name");
                            Rec_Opportunity.Description := Rec."Ship Name" + ' - ' + ShipAvailabilityLine_Rec."Customer Name";
                            Rec_Opportunity."Ship Reference No." := ShipAvailabilityLine_Rec."Document No.";
                            Rec_Opportunity.Insert();
                        until ShipAvailabilityLine_Rec.Next() = 0;
                    end;
                    Message('Opportunities Created Successfully.');
                end;
            }
        }
    }

    var
        myInt: Integer;
}